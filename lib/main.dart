

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/pages/Home.dart';
import 'package:pro/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "HomePage":(context) => HomePage()
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage()
      );
  }
}
