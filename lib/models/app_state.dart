import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:messenger_app/models/user_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  @nullable
  UserState get userState;

  @nullable
  bool get isLoading;

  AppState._();

  factory AppState() {
    return _$AppState((b) {
      b..userState = UserState().toBuilder();
      b..isLoading = false;
    });
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
