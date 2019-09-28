import 'package:messenger_app/actions/actions.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:redux/redux.dart';

Future<Null> appMiddleware(Store<AppState> store, action, NextDispatcher next) {
  switch (action.runtimeType) {
    case CheckLoggedInUser:
      next(action);
      break;

    default:
      next(action);
  }
}
