import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final String name;
  final int age;
  final String contactNo;
  final String gender;

  User({this.age, this.contactNo, this.gender, this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      title: Text(name),
      subtitle: Text('6:30'),
      trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: null),
    );
  }
}
