import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:messenger_app/models/user.dart';

class FirebaseUserService {
  FirebaseUserService._();

  static final FirebaseUserService instance = FirebaseUserService._();

  factory FirebaseUserService.getInstance() => instance;

  onSignUp(String email, String password, User user) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then(
          onSignUpComplete(email, password, user),
        );
  }

  onSignUpComplete(String email, String password, User user) {
    Firestore.instance.collection('users').add({
      'email': email,
      'password': password,
    }).then((b) {
      print(b.collection('users'));
//      Navigator.pop(context);
//      Navigator.pushReplacement(
//        context,
//        MaterialPageRoute(
//          builder: (context) => HomePage(),
//        ),
//      );
    }).catchError((e) {
      print('error signing up user');
      print(e);
    });
  }
}
