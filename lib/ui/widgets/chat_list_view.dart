import 'package:flutter/material.dart';

import 'package:fermer/ui/widgets/chat_list_item_view.dart';

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