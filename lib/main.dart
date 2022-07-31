import 'package:blt/view/add_post.dart';
import 'package:blt/view/index.dart';
import 'package:blt/view/post_detail.dart';
import 'package:blt/view/signin.dart';
import 'package:blt/view/signup.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const IndexPage(),
  '/signin': (context) => const SignInPage(),
  '/signup': (context) => const SignUpPage(),
  '/post_detail': (context) => const PostDetailPage(),
  '/add_post' :(context) => const AddPostPage()
};

const String initialRoute = '/add_post';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '536 Memories Web',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      routes: routes,
    );
  }
}