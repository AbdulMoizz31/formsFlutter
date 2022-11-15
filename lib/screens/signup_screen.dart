// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginforms/screens/buttons/my_button.dart';
import 'package:loginforms/screens/login_screen.dart';
import 'package:loginforms/styles/constants.dart';

class SignupScreen extends StatefulWidget {
  static const id = 'signup_screen';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _toggleObsecureText = false;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white.withOpacity(0.9),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: kContainerDecoration,
          margin: const EdgeInsets.only(top: 80.0, left: 35.0),
          height: 650.0,
          width: 323.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_add, color: Color(0xffE98424)),
                    SizedBox(width: 10.0),
                    Text('Sign up', style: kLoginTextStyle),
                  ],
                ),
                Text(
                  'Create to your account - enjoy our services\nwith most updated features',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                //SizedBox(height: 10.0),
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                InputField(hintText: 'Email'),
                Text(
                  'Phone Number',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                InputField(hintText: 'your phone number'),
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                TextField(
                  obscureText: _toggleObsecureText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _toggleObsecureText = !_toggleObsecureText;
                          });
                        },
                        icon: Icon(_toggleObsecureText
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    focusColor: Colors.blue.shade900,
                    border: kInputFieldStyle,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 2.0),
                  horizontalTitleGap: 1.0,
                  title: Text(
                    'I agree with Terms and Privacy',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  leading: Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = !_isChecked;
                      });
                    },
                  ),
                ),
                MyButton(onPressed: () {}, buttonText: "Let's roll"),
                Divider(
                  thickness: 0.5,
                  color: Colors.black54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an acount? "),
                    OtherOptionButton(
                      text: 'Login',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                    ),
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
