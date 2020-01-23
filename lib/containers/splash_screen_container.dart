import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:messenger_app/home_page.dart';
import 'package:messenger_app/login_page.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/splash_page.dart';
import 'package:redux/redux.dart';

class SplashPageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
        converter: null,
        builder: (BuildContext context, _ViewModel _viewModel) {
          return _viewModel.isLoading
              ? SplashPage()
              : _viewModel.loggedInUser.id == null ? LoginPage() : HomePage();
        });
  }
}

class _ViewModel {
  bool isLoading;
  User loggedInUser;

  _ViewModel({this.isLoading, this.loggedInUser});

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(loggedInUser: store.state.userState.profile);
  }
}
