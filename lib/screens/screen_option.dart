// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginforms/screens/buttons/my_button.dart';
import 'package:loginforms/styles/constants.dart';
import 'package:loginforms/screens/Email_recovery_screen.dart';
import 'package:loginforms/screens/account_screen.dart';
import 'package:loginforms/screens/login_screen.dart';
import 'package:loginforms/screens/password_recovey_screen.dart';
import 'package:loginforms/screens/signup_screen.dart';

class OptionsScreen extends StatelessWidget {
  static const id = 'options_screen';
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white.withOpacity(0.9),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: kContainerDecoration,
          margin: const EdgeInsets.only(top: 200.0, left: 35.0),
          height: 350.0,
          width: 323.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.home, color: Color(0xffE98424)),
                    SizedBox(width: 10.0),
                    Text('Screens', style: kLoginTextStyle),
                  ],
                ),
                Text(
                  "On Which Screen you want to check",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                // Login Screen button
                MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    buttonText: 'Login Screen'),
                // Sign Up screen button
                MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()),
                      );
                    },
                    buttonText: 'Sign Up Screen'),
                // Accounts Screen
                MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountScreen()),
                      );
                    },
                    buttonText: 'Account Screen'),
                // Password Recovery Screen
                MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PasswordRecoverScreen()),
                      );
                    },
                    buttonText: 'Password Recovery Screen'),
                // Email Recover Screen
                MyButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EmailRecoverScreen()),
                      );
                    },
                    buttonText: 'Email Recover Screen'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
