import 'package:blt/view/index.dart';
import 'package:blt/view/post_detail.dart';
import 'package:blt/view/signin.dart';
import 'package:blt/view/signup.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const IndexPage(),
    );
  }
}