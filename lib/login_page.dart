import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:messenger_app/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String email;
  String password;
  final _formKey = GlobalKey<FormState>();

  LoginPageState({this.email, this.password});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Color.fromRGBO(0, 0, 255, 0.5),
      child: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(35.0),
                ),
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      alignLabelWithHint: true,
                      border: InputBorder.none),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(35.0),
                ),
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      alignLabelWithHint: true,
                      border: InputBorder.none),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Required';
                    } else {
                      if (value.length < 8) {
                        return 'Password must be  of at least 8 characters';
                      }
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrange,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
