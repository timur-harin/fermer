import 'package:fermer/ui/kit/theme.dart';
import 'package:flutter/material.dart';

import 'ui/sreens/login.dart';
import 'ui/sreens/register.dart';
import 'ui/sreens/start.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomUI().theme,
      title: 'Fresh Market',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
