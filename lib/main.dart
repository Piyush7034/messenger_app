import 'package:flutter/material.dart';
import 'package:messenger_app/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
      title: 'Messenger App',
    );
  }
}
