import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fermer/ui/kit/theme.dart' as Theme;
import 'package:fermer/ui/widgets/chat_page_view.dart';
import 'package:fermer/ui/widgets/chat_list_view.dart';


void main() => runApp(ChatListApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Chat UI',
      debugShowCheckedModeBanner: false,
      // theme: Theme.CustomUI.theme,
      home: ChatListView(),
    );
  }
}


class ChatListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat List Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        hintColor: Colors.green,
      ),
      home: const ChatListPage(title: 'Chat List'),
    );
  }
}