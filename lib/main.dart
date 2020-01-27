import 'package:flutter/material.dart';
import 'package:messenger_app/login_page.dart';
import 'package:messenger_app/stores/counter_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildCloneableWidget>[
        Provider<CounterStore>.value(value: CounterStore()),
      ],
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
