import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pocfb/view/auth_screen.dart';
import 'package:pocfb/view/dashboard.dart';
import 'dart:ui';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        // stream: FirebaseAuth.instance.onAuthStateChanged,
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, usersnapshot) {
          if (usersnapshot.hasData) {
            return Dashboard();
          } else {
            return AuthScreen();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  //  return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: AuthScreen(),
  //   );
  }
}

