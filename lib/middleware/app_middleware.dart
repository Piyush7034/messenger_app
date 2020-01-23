import 'package:messenger_app/actions/actions.dart';
import 'package:messenger_app/actions/user_action.dart';
import 'package:messenger_app/models/app_state.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/services/preferences_service.dart';
import 'package:redux/redux.dart';

Future<Null> appMiddleware(
    Store<AppState> store, action, NextDispatcher next) async {
  PreferencesService preferencesService = PreferencesService.getInstance();

  switch (action.runtimeType) {
    case CheckLoggedInUser:
      store.dispatch(AppLoading(isLoading: true));
      User user = await preferencesService.getAuthUser();
      if (user != null) {
        store.dispatch(SetUser());
      }

      next(action);
      break;

    default:
      next(action);
  }
}
