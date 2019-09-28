import 'package:flutter/material.dart';
import 'package:messenger_app/chats/user_page.dart';
import 'package:messenger_app/user_manager/add_user.dart';

class ChatsScreen extends StatefulWidget {
  @override
  ChatsScreenState createState() => ChatsScreenState();
}

class ChatsScreenState extends State<ChatsScreen> {
  final List<UserPage> users = new List<UserPage>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddUser(
                          users: users,
                        )));
          }),
      body: users == null
          ? Center(
              child: Text('Add a user to start chatting'),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                print(index);
                return users[index];
              },
            ),
    );
  }
}
