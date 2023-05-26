import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'auth/auth_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,),
      body: TextButton(
        child: Text("Login"),
        onPressed: () async  {
          var response = await  dio.post(
            "https://fspmainservice.onrender.com/users/login/",
            data: {
              "username": "test",
              "password": "test"
            }
          );
          print(response.data);
        },
        )
    );
  }
}
