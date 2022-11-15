import 'package:flutter/material.dart';

BoxDecoration kContainerDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(15.0),
);

const kLoginTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);

BoxDecoration kOtherLoginDecoration = BoxDecoration(
  border: Border.all(color: Colors.black26),
  borderRadius: BorderRadius.circular(10.0),
  color: Colors.white24,
);

ButtonStyle kButtonStyle = TextButton.styleFrom(
    backgroundColor: const Color(0xff284BC1),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ));

InputBorder kInputFieldStyle = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);
