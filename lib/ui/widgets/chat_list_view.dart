import 'package:flutter/material.dart';

import 'package:fermer/ui/widgets/chat_list_item_view.dart';

class ChatListPage extends StatefulWidget {
  final String title;

  const ChatListPage({Key? key, required this.title}) : super(key: key);

  @override
  ChatListPageState createState() => ChatListPageState();
}

class ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(95.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                  hintText: 'Введите имя пользователя...',
                  suffixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(end: 12.0),
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                    ), // icon is 48px widget.
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  filled: true),
            ),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: Colors.greenAccent[400],
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20.0,
            ),
          )
        ],
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ChatListView(),
          ],
        ),
      ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     tooltip: 'Increment',
      //     child: const Icon(Icons.add),
      //   ),
    );
  }
}

class ChatListView extends StatefulWidget {
  const ChatListView({super.key});

  @override
  ChatListViewState createState() {
    return ChatListViewState();
  }
}

class ChatListViewState extends State<ChatListView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView(
          shrinkWrap: true,
          children: <Widget>[
            ChatListItemWidget(),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}