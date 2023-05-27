import 'dart:convert';

import 'package:fermer/core/auth/server_api.dart';
import 'package:fermer/core/utils/token_api.dart';
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
          SizedBox(
            height: 300,
            // child: FutureBuilder(
            //     future: fetchData(),
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         return ListView.builder(
            //           itemCount: snapshot.data!.length,
            //           itemBuilder: (context, index) {
            //             return ListTile(
            //               title: Text(
            //                 snapshot.data![index]['id'].toString(),
            //                 style: TextStyle(fontSize: 20),
            //               ),
            //             );
            //           },
            //         );
            //       } else {
            //         return Text('Loading...');
            //       }
            //     }),
            child: Text("test")
          )
        ])));
  }
}

Future<List<Map<String, dynamic>>> fetchData() async {
  var token = await TokenApi.getAccessToken();
  final response = await ServerApi().get("/users/items/", token).timeout(Duration(seconds: 3));
  print(response.statusCode);
  // print(response);
  if (response.statusCode == 201 || response.statusCode == 200) {
    print("success");

    print(response.data['items']);

    return List<Map<String, dynamic>>.from(response.data['items']);
  } else {
    throw Exception('Failed to fetch data');
  }
}
