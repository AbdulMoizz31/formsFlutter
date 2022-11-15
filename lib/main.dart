// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginforms/screens/screen_option.dart';
// import 'package:loginforms/screens/login_screen.dart';
// import 'package:loginforms/screens/signup_screen.dart';
// import 'package:loginforms/screens/account_screen.dart';
// import 'package:loginforms/screens/password_recovey_screen.dart';
// import 'package:loginforms/screens/Email_recovery_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OptionsScreen(),
      // routes: {
      //   OptionsScreen.id: (context) => OptionsScreen(),
      //   LoginScreen.id: (context) => LoginScreen(),
      //   SignupScreen.id: (context) => SignupScreen(),
      //   PasswordRecoverScreen.id: (context) => PasswordRecoverScreen(),
      //   EmailRecoverScreen.id: (context) => EmailRecoverScreen(),
      // },
    );
  }
}
