import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:messenger_app/login_page.dart';
import 'package:messenger_app/middleware/app_middleware.dart';
import 'package:messenger_app/middleware/signup_middleware.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/reducers/app_state_reducer.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final store = Store<AppState>(appReducer,
      initialState: AppState(), middleware: [appMiddleware, signUpMiddleware]);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: MyApp.store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: LoginPage(),
          ),
        ),
        title: 'Messenger App',
      ),
    );
  }
}
