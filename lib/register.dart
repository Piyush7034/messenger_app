import 'package:flutter/material.dart';
import 'package:messenger_app/utils/styles.dart';

class RegisterPage extends StatefulWidget {
  String email;
  String password;
  String retypePassword;
  Function onSignUp;

  RegisterPage({this.email, this.password, this.retypePassword, this.onSignUp});

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgimage.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.95), BlendMode.dstATop),
              ),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Required';
                        else {
                          setState(() {
                            widget.email = value;
                          });

                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Email', border: InputBorder.none),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Required';
                        else {
                          setState(() {
                            widget.password = value;
                          });

                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Password', border: InputBorder.none),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Required';
                        else {
                          setState(() {
                            widget.retypePassword = value;
                          });

                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Re-enter password',
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                      } else {
                        _showSnackBar();
                      }
                    },
                    child: Text(
                      'Register',
                      style: Styles.buttonText,
                    ),
                    color: Styles.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackBar() {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Please provide a valid value')));
  }
}
