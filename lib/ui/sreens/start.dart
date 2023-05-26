import 'package:fermer/ui/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: SafeArea(
          child: Column(children: [
            Text("Start"),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Login"),
            ),
          ]),
        ));
  }
}
