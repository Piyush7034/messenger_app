import 'package:messenger_app/models/user.dart';

class AddUser {
  User user;

  AddUser(this.user);
}

class FetchUser {}

class FetchUserComplete {
  List<User> userList;

  FetchUserComplete(this.userList);
}

class SetUser {

}

class SetUserComplete{
  User user;

  SetUserComplete(this.user);
}