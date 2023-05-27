import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fermer/core/utils/server_settings.dart';
import 'package:fermer/core/utils/token_api.dart';

class AuthResult {
  bool isAuthorized = false;
  String? errorMessage;
}

class AccountCreateResult {
  bool isCreated = false;
  String? errorMessage;
}

class AuthorizationManager {
  final _dio = Dio();

  Future<AuthResult> authorize(String email, String password) async {
    // check for authorization
    var data = {"email": email, "password": password};
    Response? response;
    try {
      response = await _dio.post("${ServerSettings.baseUrl}/users/login/",
          data: data, queryParameters: {"Content-Type": "application/json"}).timeout(Duration(seconds: 3));
    } on DioError catch (e) {
      print(e);
      if (e.response == null)
        return AuthResult()..errorMessage = "Connection to server lost.";
      if (e.response!.statusCode == 401) {
        return AuthResult()
          ..errorMessage = "No active account found with the given credentials";
      }
    }

    await TokenApi.setRefreshToken(response!.data["refresh"]);
    await TokenApi.setAccessToken(response.data["access"]);
    await TokenApi.saveName(email);

    return AuthResult()..isAuthorized = true;
  }

  Future<bool> isAuthorized() async {
    print("started");
    await TokenApi.refreshTokens();
    print("refreshed");

    String? refreshToken = await TokenApi.getRefreshToken();
    String? accessToken = await TokenApi.getAccessToken();

    if (refreshToken == null || accessToken == null) {
      return false;
    }
    return true;
  }

  Future<AccountCreateResult> registerAccount(
      String email, String name, String password, String role) async {
    var data = {
      "email": email,
      "name": name,
      "password": password,
      "role": role
    };
    Response? response;
    try {
      response = await _dio.post("${ServerSettings.baseUrl}/users/register/",
          data: data).timeout(Duration(seconds: 3));
    } on DioError catch (e) {
      if (e.response == null)
        return AccountCreateResult()
          ..errorMessage = "Потеряно соединение с сервером.";
      if (e.response!.statusCode == 401 || e.response!.statusCode == 400) {
        return AccountCreateResult()
          ..errorMessage = "Уже существует аккаунт с таким email";
      }
    }
    if (response == null) {
      return AccountCreateResult()..errorMessage = "Неизвестная ошибка";
    }

    await TokenApi.setRefreshToken(response.data["refresh"]);
    await TokenApi.setAccessToken(response.data["access"]);
    await TokenApi.saveName(email);

    return AccountCreateResult()..isCreated = true;
  }

  void logout() {
    TokenApi.setAccessToken(null);
    TokenApi.setRefreshToken(null);
    TokenApi.saveName(null);
  }
}
