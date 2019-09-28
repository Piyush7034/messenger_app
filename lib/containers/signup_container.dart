import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/register.dart';
import 'package:messenger_app/services/firebase_user_service.dart';
import 'package:redux/redux.dart';

class SignupContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (BuildContext context, _ViewModel _viewModel) {
          return RegisterPage(
            onSignUp: _viewModel.onSignUp,
          );
        });
  }
}

class _ViewModel {
  Function onSignUp;

  _ViewModel({this.onSignUp});

  static _ViewModel fromStore(Store<AppState> store) {
    FirebaseUserService firebaseUserService = FirebaseUserService.getInstance();
    return _ViewModel(onSignUp: ({String email, String password}) {
      Random random = new Random();
      int userId = random.nextInt(1000);
      User user = User((b) {
        b
          ..id = userId.toString()
          ..name = 'Piyush'
          ..age = '19';
      });
      firebaseUserService.onSignUp(email, password, user);
    });
  }
}
