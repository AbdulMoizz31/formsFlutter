// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginforms/screens/buttons/my_button.dart';
import 'package:loginforms/styles/constants.dart';

class AccountScreen extends StatefulWidget {
  static const id = 'account_screen';
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Container(
          decoration: kContainerDecoration,
          margin: const EdgeInsets.only(top: 150.0, left: 35.0),
          height: 500.0,
          width: 323.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.switch_account, color: Color(0xffE98424)),
                    SizedBox(width: 10.0),
                    Text('Accounts', style: kLoginTextStyle),
                  ],
                ),
                Text(
                  'Add another account - so you can\nswitch them easily',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Your existing account',
                      style: TextStyle(),
                    ),
                    Text(
                      'Manage account',
                      style: TextStyle(color: Color(0xffE98424)),
                    ),
                  ],
                ),
                AccountOptionCard(
                  userEmail: 'panjipradana@mail.com',
                  userName: 'Panji Pradana',
                  onTap: () {},
                ),
                AccountOptionCard(
                  userEmail: 'sulvistaaji@mail.com',
                  userName: 'Sulvista Aji',
                  onTap: () {},
                ),
                AccountOptionCard(
                  userEmail: 'astarolepez@mail.com',
                  userName: 'Astaro Lopez',
                  onTap: () {},
                ),
                MyButton(onPressed: () {}, buttonText: 'Add another account'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
