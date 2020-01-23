import 'package:messenger_app/actions/actions.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/reducers/user_reducer.dart';
import 'package:redux/redux.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild(
    (b) => b
      ..userState.replace(userReducer(state.userState, action))
      ..isLoading = loadingReducer(state.isLoading, action),
  );
}

Reducer<bool> loadingReducer =
    combineReducers([TypedReducer<bool, AppLoading>(loadingHomePageReducer)]);

bool loadingHomePageReducer(bool isLoading, action) {
  print(action.isLoading);
  return action.isLoading;
}
