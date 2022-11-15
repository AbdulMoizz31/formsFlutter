// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginforms/screens/Email_recovery_screen.dart';
import 'package:loginforms/styles/constants.dart';
import 'package:loginforms/screens/buttons/my_button.dart';

class PasswordRecoverScreen extends StatelessWidget {
  static const id = 'paasword_recovery_screen';
  const PasswordRecoverScreen({super.key});

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
                    Icon(Icons.person, color: Color(0xffE98424)),
                    SizedBox(width: 10.0),
                    Text('Forgot password?', style: kLoginTextStyle),
                  ],
                ),
                //SizedBox(height: 10.0),
                Text(
                  'Enter your email that you used to register\nyour account, so we can send you a link to\nreset your password',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                //SizedBox(height: 10.0),
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                InputField(hintText: 'Email'),
                MyButton(onPressed: () {}, buttonText: 'Send Link'),
                Divider(
                  thickness: 0.5,
                  color: Colors.black54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Forgot your email? "),
                    OtherOptionButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EmailRecoverScreen()),
                          );
                        },
                        text: 'Try using Phone number'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
