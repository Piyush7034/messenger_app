import 'package:messenger_app/middleware/signup_middleware.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/reducers/app_state_reducer.dart';
import 'package:redux/redux.dart';

final store = Store<AppState>(appReducer,
    initialState: AppState(), middleware: [signUpMiddleware]);
