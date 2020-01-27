import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

typedef ProviderWidgetBuilder<T> = Widget Function(
    T provider, BuildContext context);

class StoreObserver<T> extends StatelessWidget {
  final ProviderWidgetBuilder<T> builder;

  const StoreObserver({@required this.builder});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return builder(Provider.of<T>(context), context);
      },
    );
  }
}
