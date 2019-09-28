import 'package:messenger_app/actions/signin_action.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/services/firebase_user_service.dart';
import 'package:redux/redux.dart';

Future<Null> signUpMiddleware(Store<AppState> store,action,NextDispatcher next){
  FirebaseUserService firebaseUserService = FirebaseUserService.getInstance();

  switch(action.runtimeType){
    case SignUpUser:
      next(action);
      break;

    default:
      next(action);
  }
}