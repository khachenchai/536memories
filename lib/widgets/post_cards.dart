import 'package:flutter/material.dart';

class PostCards extends StatelessWidget {
  const PostCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color.fromARGB(16, 147, 147, 147),
        ),
      ),
    );
  }
}