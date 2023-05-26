import 'package:flutter/material.dart';
import 'package:fermer/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Fresh Market',
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}