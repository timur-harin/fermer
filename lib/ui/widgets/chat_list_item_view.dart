import 'package:fermer/ui/widgets/chat_page_view.dart';
import 'package:flutter/material.dart';

class ChatListItemWidget extends StatelessWidget {
  const ChatListItemWidget();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChatPageView(
                    username: "Dinesh Ahuja",
                  )),
        );
      },
      leading: InkWell(
        child: const Hero(
          tag: 'profile_pic',
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
        ),
      ),
      title: const Row(
        children: <Widget>[
          Text('Dinesh Ahuja'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: CircleAvatar(
              radius: 10.0,
              child: Text('3'),
            ),
          )
        ],
      ),
      subtitle: const Text('Lorem ipsum'),
      trailing: const Text('a moment ago'),
    );
  }
}
