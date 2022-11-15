// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// TODO: Add comments
import 'package:flutter/material.dart';
import 'package:loginforms/screens/signup_screen.dart';
import 'package:loginforms/styles/constants.dart';
import 'package:loginforms/screens/buttons/my_button.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.person, color: Color(0xffE98424)),
                    SizedBox(width: 10.0),
                    Text('Login', style: kLoginTextStyle),
                  ],
                ),
                //SizedBox(height: 10.0),
                Text(
                  'Login to your account - enjoy exclusive\nfeatures and many more',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                //SizedBox(height: 10.0),
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                InputField(
                  hintText: 'Email',
                  label: Text('Email'),
                ),
                //SizedBox(height: 10.0),
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
                    //focusColor: Colors.blue.shade900,
                    border: kInputFieldStyle,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 2.0),
                  horizontalTitleGap: 1.0,
                  trailing: Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  title: Text(
                    'Remember me',
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
                MyButton(buttonText: 'Login', onPressed: () {}),
                //SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'or',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  width: 300.0,
                  height: 42.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: kOtherLoginDecoration,
                  child: Center(
                    child: Text(
                      'Login with Google',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  width: 300.0,
                  height: 42.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: kOtherLoginDecoration,
                  child: Center(
                      child: Text(
                    'Login with Twitter',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  width: 300.0,
                  height: 42.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: kOtherLoginDecoration,
                  child: Center(
                      child: Text(
                    'Login with Apple ID',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(height: 10.0),
                Divider(
                  thickness: 0.5,
                  color: Colors.black54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an acount? "),
                    OtherOptionButton(
                      text: 'Sign Up',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()),
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
