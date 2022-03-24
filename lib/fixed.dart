import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFFFC107);
const Color secondaryColor = Color(0xFF242430);
const Color darkColor = Color(0xFF191923);
const Color bodyTextColor = Color(0xFF8B8B8D);
const Color bgColor = Color.fromARGB(255, 30, 30, 40);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

// class Contentview {
//   Contentview({required this.content,required this.tab})
//   final Customtab tab;
//   final Widget content;
// }

