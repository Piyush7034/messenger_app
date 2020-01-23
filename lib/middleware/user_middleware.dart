import 'package:messenger_app/actions/user_action.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/models/user.dart';
import 'package:redux/redux.dart';

Future<Null> userMiddleware(
    Store<AppState> store, action, NextDispatcher next) {
  switch (action.runtimeType) {
    case AddUser:
      next(action);
      break;

    case FetchUser:
      List<User> userList = [];
      store.dispatch(FetchUserComplete(userList.toList()));
      break;

    case FetchUserComplete:
      next(action);
      break;

    case SetUser:
      next(action);
      break;

    default:
      next(action);
      break;
  }
}
