import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpModel extends ChangeNotifier {
  String mail = '';
  String password = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signUp() async {
    if (mail.isEmpty) {
      throw ('Enter your mail address');
    }
    if (password.isEmpty) {
      throw ('Enter your password');
    }

    final UserCredential user = await (_auth.createUserWithEmailAndPassword(
      email: mail,
      password: password,
    ));

    final email = user.credential;

    FirebaseFirestore.instance.collection('users').add(
      {
        'email': mail,
        'createdAt': Timestamp.now(),
      },
    );
  }
}
