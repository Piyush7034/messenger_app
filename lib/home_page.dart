import 'package:flutter/material.dart';
import 'package:messenger_app/chats/chats_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Chat App'),
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
            Center(child: Text('Status')),
            Center(child: Text('Calls'))
          ],
        ),
      ),
    );
  }
}
