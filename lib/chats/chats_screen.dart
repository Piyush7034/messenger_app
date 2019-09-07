import 'package:flutter/material.dart';
import 'package:messenger_app/chats/chat_page.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/user_manager/add_user.dart';

class ChatsScreen extends StatefulWidget {
  @override
  ChatsScreenState createState() => ChatsScreenState();
}

class ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddUser()));
      }),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                InkWell(
                  child: User(
                    id: index + 1,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatPage(
                                  id: index + 1,
                                )));
                  },
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
