import 'package:flutter/material.dart';

class AddStatus extends StatefulWidget {
  @override
  AddStatusState createState() => AddStatusState();
}

class AddStatusState extends State<AddStatus> {
  String text;
  TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: TextField(
                controller: _textController,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  hintText: 'Type here',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.color_lens,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.colorize,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      setState(() {
                        _textController.clear();
                        Navigator.pop(context, text);
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
