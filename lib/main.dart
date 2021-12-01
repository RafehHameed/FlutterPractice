// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      routes: {
        "/home": (context) => HomePage(),
        "/": (context) => LoginPage(),
      },
    );
  }
}
