import 'package:flutter/material.dart';
import 'package:messenger_app/status_manager/add_status.dart';

class StatusOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
            ),
            title: Text('Piyush'),
            subtitle: Text('Tap to add a story'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddStatus()));
            },
          ),
          Divider(),
          Expanded(
            child: Center(
              child: Text('No stories available'),
            ),
          ),
        ],
      ),
    );
  }
}
