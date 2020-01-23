import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:messenger_app/home_page.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:redux/redux.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _ViewModel _viewModel) {
        return HomePage();
      },
    );
  }
}

class _ViewModel {
  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel();
  }
}
