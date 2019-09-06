import 'package:flutter/material.dart';
import 'package:messenger_app/chats/message.dart';

class ChatPage extends StatefulWidget {
  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  TextEditingController _textController = new TextEditingController();
  String text;
  List<Message> messages = <Message>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Chat Page'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: messages.length,
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  return messages[index];
                }),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Write here', border: InputBorder.none),
                    controller: _textController,
                    onChanged: (value) {
                      text = value;
                    },
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  _submitMessage(_textController.text);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  void _submitMessage(String text) {
    _textController.clear();
    setState(() {
      messages.insert(
        0,
        Message(
          text: text,
        ),
      );
    });
  }
}
