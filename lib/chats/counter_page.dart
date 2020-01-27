import 'package:flutter/material.dart';
import 'package:messenger_app/stores/counter_store.dart';
import 'package:messenger_app/utils/sizeconfig.dart';
import 'package:messenger_app/utils/store_observer.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return StoreObserver<CounterStore>(
      builder: (CounterStore counterStore, BuildContext context) {
        return Scaffold(
          body: Container(
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: Center(
              child: Text(
                counterStore.counter.toString(),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              counterStore.incrementAction();
              print(counterStore.counter);
            },
          ),
        );
      },
    );
  }
}
