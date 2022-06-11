// import 'dart:js';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class AuthViewModel extends ChangeNotifier{

//   final _formkey = GlobalKey<FormState>();
//   var _email = '';
//   var _password = '';
//   var _username = '';
//   bool isLoginPage = false;

//   Future<void>submitform(String email, String password, String username) async {
//     final auth = FirebaseAuth.instance;
//     UserCredential authResult;
//     try {
//       if (isLoginPage) {
//         authResult = await auth.signInWithEmailAndPassword(
//             email: email, password: password);
//       } else {
//         authResult = await auth.createUserWithEmailAndPassword(
//             email: email, password: password);
//         String uid = authResult.user!.uid;
//         await FirebaseFirestore.instance
//             .collection('users')
//             .doc(uid)
//             .set({'username': username, 'email': email});
//       }
//     } on PlatformException catch (err) {
//       var message = 'An error occured';
//       if (err.message != null) {
//         message = err.message!;
//       }
//       Scaffold.of(context).showSnackBar(SnackBar(
//         content: Text(message),
//         backgroundColor: Colors.red,
//       ));
//     } catch (err) {
//       print(err);
//     }
//   }

// }