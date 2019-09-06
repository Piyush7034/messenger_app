import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String text;

  const Message({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Card(
        color: Colors.lightGreenAccent,
        margin: EdgeInsets.all(10.0),
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
            ),
            maxLines: null,
          ),
        ),
      ),
    );
  }
}
