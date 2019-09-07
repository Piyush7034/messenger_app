import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final int id;
  final String age;
  final String contactNo;
  final String gender;

  User({this.id, this.age, this.contactNo, this.gender});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      title: Text('Chat id: ' + id.toString()),
      subtitle: Text('6:30'),
      trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: null),
    );
  }
}
