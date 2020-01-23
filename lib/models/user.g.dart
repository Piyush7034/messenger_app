// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.age != null) {
      result
        ..add('age')
        ..add(serializers.serialize(object.age,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String name;
  @override
  final String id;
  @override
  final String age;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.name, this.id, this.age}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        name == other.name &&
        id == other.id &&
        age == other.age;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), id.hashCode), age.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('name', name)
          ..add('id', id)
          ..add('age', age))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _age;
  String get age => _$this._age;
  set age(String age) => _$this._age = age;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _id = _$v.id;
      _age = _$v.age;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ?? new _$User._(name: name, id: id, age: age);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
