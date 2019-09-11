import 'package:flutter/material.dart';
import 'package:messenger_app/chats/user.dart';
import 'package:messenger_app/user_manager/add_user.dart';

class ChatsScreen extends StatefulWidget {
  @override
  ChatsScreenState createState() => ChatsScreenState();
}

class ChatsScreenState extends State<ChatsScreen> {
  final List<User> users = new List<User>();

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
      body: users == null || users.length > 0
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
