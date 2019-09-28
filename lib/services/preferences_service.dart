import 'dart:convert';

import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/serializers/serializers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  PreferencesService._();

  static final PreferencesService _instance = PreferencesService._();

  factory PreferencesService() => _instance;

  static const AUTH_TOKEN = "auth_token";
  static const LOGGED_IN_USER = "logged_in_user";

  Future<SharedPreferences> _getInstance() async {
    return SharedPreferences.getInstance();
  }

  setAuthToken(String token) async {
    (await this._getInstance()).setString(PreferencesService.AUTH_TOKEN, token);
  }

  setAuthUser(User user) async {
    (await this._getInstance()).setString(PreferencesService.LOGGED_IN_USER,
        json.encode(serializers.serializeWith(User.serializer, user)));
  }

  Future<String> getAuthToken() async {
    (await this._getInstance()).getString(PreferencesService.AUTH_TOKEN);
  }

  Future<User> getAuthUser() async {
    return serializers.deserializeWith(
        User.serializer,
        json.decode((await this._getInstance())
            .getString(PreferencesService.LOGGED_IN_USER)));
  }

  Future<bool> hasAuthToken() async {
    return this.getAuthToken().then((token) {
      return token != null;
    });
  }
}
