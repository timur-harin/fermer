import 'package:dio/dio.dart';
import 'package:fermer/ui/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


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
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(padding:  EdgeInsets.symmetric(horizontal: 32),
        child: Column(children: [
          
        ],)
        ),
        )
    );
  }
}
