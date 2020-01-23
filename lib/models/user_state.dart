import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:messenger_app/models/user.dart';

part 'user_state.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  @nullable
  User get profile;

  UserState._();

  factory UserState() {
    return _$UserState((b) {
      b..profile = User().toBuilder();
    });
  }

  static Serializer<UserState> get serializer => _$userStateSerializer;
}
