import 'package:flutter/material.dart';
import 'package:fermer/ui/kit/colors.dart' as colors;
import 'package:fermer/ui/widgets/messages/received_message.dart';
import 'package:fermer/ui/widgets/messages/sent_message.dart';

class ChatPageView extends StatefulWidget {
  final String? username;

  const ChatPageView({
    Key? key,
    this.username,
  }) : super(key: key);

  @override
  _ChatPageViewState createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  final TextEditingController _text = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];

  @override
  void initState() {
    super.initState();
    childList.add(Align(
        alignment: const Alignment(0, 0),
        child: Container(
          margin: const EdgeInsets.only(top: 5.0),
          height: 25,
          width: 50,
          decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              )),
          child: const Center(
              child: Text(
                "Today",
                style: TextStyle(fontSize: 11),
              )),
        )));
    childList.add(const Align(
      alignment: Alignment(1, 0),
      child: SentMessageWidget(
        content: 'Hello',
        time: '21:36 PM',
        isImage: false,
      ),
    ));
    childList.add(const Align(
      alignment: Alignment(1, 0),
      child: SentMessageWidget(
        content: 'How are you? What are you doing?',
        time: '21:36 PM',
        isImage: false,
      ),
    ));
    childList.add(const Align(
      alignment: Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'Hello, Mohammad.I am fine. How are you?',
        time: '22:40 PM',
        isImage: false,
      ),
    ));
    childList.add(const Align(
      alignment: Alignment(1, 0),
      child: SentMessageWidget(
        content:
        'I am good. Can you do something for me? I need your help my bro.',
        time: '22:40 PM',
        isImage: false,
      ),
    ));
    childList.add(const Align(
      alignment: Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'this is fun 😂',
        time: '22:57 PM',
        isImage: true,
        imageAddress: 'assets/images/fun.jpg',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 65,
                  child: Container(
                    color: colors.CustomColors.lightYellow,
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              widget.username ?? "Jimi Cooke",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                            const Text(
                              "online",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 12),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding:
                          const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                          child: Container(
                            height: 55,
                            width: 55,
                            padding: const EdgeInsets.all(0.0),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5.0,
                                      spreadRadius: -1,
                                      offset: Offset(0.0, 5.0))
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                  color: colors.CustomColors.deepYellow,
                                  child: SizedBox(
                                    child: Image.asset(
                                      "assets/images/person1.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 0,
                  color: Colors.black54,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       // image: const AssetImage(
                    //       //     "assets/images/chat-background-1.jpg"),
                    //       fit: BoxFit.cover,
                    //       colorFilter: Settings.isDarkMode
                    //           ? ColorFilter.mode(
                    //           Colors.grey[850], BlendMode.hardLight)
                    //           : ColorFilter.linearToSrgbGamma()),
                    // ),
                    child: SingleChildScrollView(
                        controller: _scrollController,
                        // reverse: true,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: childList,
                        )),
                  ),
                ),
                const Divider(height: 0, color: Colors.black26),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      maxLines: 20,
                      controller: _text,
                      decoration: InputDecoration(
                        suffixIcon: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.image),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        border: InputBorder.none,
                        hintText: "enter your message",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}