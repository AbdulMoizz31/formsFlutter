// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginforms/styles/constants.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const MyButton({Key? key, required this.onPressed, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      width: 300.0,
      child: TextButton(
        onPressed: onPressed,
        style: kButtonStyle,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final Widget? label;
  final String hintText;
  const InputField({Key? key, required this.hintText,this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        focusColor: Colors.blue.shade900,
        border: kInputFieldStyle,
      ),
    );
  }
}

class AccountOptionCard extends StatelessWidget {
  const AccountOptionCard(
      {super.key,
      required this.onTap,
      required this.userName,
      required this.userEmail});

  final VoidCallback onTap;
  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        width: 300.0,
        height: 70.0,
        padding: EdgeInsets.all(10.0),
        decoration: kOtherLoginDecoration,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    userEmail,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtherOptionButton extends StatelessWidget {
  const OtherOptionButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xff284BC1),
        ),
      ),
    );
  }
}