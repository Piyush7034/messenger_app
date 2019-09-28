import 'package:flutter/material.dart';
import 'package:messenger_app/chats/user_page.dart';

class AddUser extends StatefulWidget {
  final List<UserPage> users;

  AddUser({this.users});

  @override
  AddUserState createState() => AddUserState();
}

class AddUserState extends State<AddUser> {
  final _formKey = GlobalKey<FormState>();
  String name;
  int age;
  String gender;
  String contactNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add user to connect'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Name'),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          return 'Required';
                        }
                        setState(() {
                          name = value;
                        });

                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Age'),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          return 'Required';
                        }
                        setState(() {
                          age = int.parse(value);
                        });
                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Conatct No'),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          return 'Required';
                        }
                        setState(() {
                          contactNo = value;
                        });
                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Gender'),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          return 'Required';
                        }
                        setState(() {
                          gender = value;
                        });
                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      setState(() {
                        UserPage user = UserPage(
                          name: name,
                          age: age,
                          contactNo: contactNo,
                          gender: gender,
                        );
                        widget.users.add(user);
                        print(user.name);
                        Navigator.pop(context, widget.users);
                      });
                    }
                  },
                  child: Text('Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
