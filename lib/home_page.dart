import 'package:flutter/material.dart';
import 'package:messenger_app/chats/chats_screen.dart';
import 'package:messenger_app/status_manager/status_option.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Chat App'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(icon: Icon(Icons.more_vert), onPressed: null)
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera')),
//            IconButton(icon: Icon(Icons.person), onPressed: (){
//              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
//            }),
            ChatsScreen(),
            StatusOption(),
            Center(child: Text('Calls'))
          ],
        ),
      ),
    );
  }
}
