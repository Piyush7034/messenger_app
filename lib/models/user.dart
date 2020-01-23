import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  static Serializer<User> get serializer => _$userSerializer;

  @nullable
  String get name;

  String get id;

  @nullable
  String get age;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;
}
