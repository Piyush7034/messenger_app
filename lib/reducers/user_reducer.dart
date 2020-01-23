import 'package:messenger_app/actions/actions.dart';
import 'package:messenger_app/actions/signin_action.dart';
import 'package:messenger_app/actions/user_action.dart';
import 'package:messenger_app/models/user_state.dart';
import 'package:redux/redux.dart';

Reducer<UserState> userReducer =
    combineReducers([TypedReducer<UserState, SignUpUser>(signUpReducer)]);



UserState signUpReducer(UserState state, SignUpUser action) {
  print('In action reducer sign-up-user');
  print(action.user);
  state = state.rebuild((b) {
    b..profile.replace(action.user);
  });
  return state;
}

UserState addUserReducer(UserState state,AddUser action){}
