import 'dart:convert';

import 'package:fermer/core/auth/server_api.dart';
import 'package:fermer/core/utils/token_api.dart';
import 'package:fermer/data/models/item.dart';
import 'package:fermer/ui/kit/colors.dart';
import 'package:fermer/ui/widgets/app_bar.dart';
import 'package:fermer/ui/widgets/chat_list_view.dart';
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        backgroundColor: CustomColors.deepGreen,
        onPressed: () => Navigator.pushNamed(context, "/chats")
      ),
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: SafeArea(
            child: Column(children: [
          SizedBox(
            height: 300,
            child: FutureBuilder(
                future: fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        
                        return ListTile(
                          title: Text(snapshot.data![index].category) ,
                        );
                      },
                    );
                  } else {
                    return Text('Loading...');
                  }
                }),          
        )])));
  }
}

Future<List<Item>> fetchData() async {
  var token = await TokenApi.getAccessToken();
  final response = await ServerApi().get("/users/items/", token).timeout(Duration(seconds: 3));
  if (response.statusCode == 201 || response.statusCode == 200) {
    var items;
    try{
    // response is list of items
    print(items);
    } catch (e) {
      print(e);
    }
    
    return items;
  } else {
    throw Exception('Failed to fetch data');
  }
}
