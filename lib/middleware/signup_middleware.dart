import 'package:messenger_app/actions/signin_action.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/services/firebase_user_service.dart';
import 'package:messenger_app/services/preferences_service.dart';
import 'package:redux/redux.dart';

Future<Null> signUpMiddleware(
    Store<AppState> store, action, NextDispatcher next) {
  FirebaseUserService firebaseUserService = FirebaseUserService.getInstance();
  PreferencesService preferencesService = PreferencesService.getInstance();

  switch (action.runtimeType) {
    case SignUpUser:
      firebaseUserService.onSignUp(action.email, action.password, action.user);
      preferencesService.setAuthUser(action.user);
      preferencesService.setAuthToken(action.token);
      next(action);
      break;

    default:
      next(action);
  }
}
