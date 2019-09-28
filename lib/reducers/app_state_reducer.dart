import 'package:messenger_app/models/app_state.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild((b) => b);
}
