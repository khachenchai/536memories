import 'package:flutter/material.dart';

class ImagePrototype extends StatelessWidget {
  const ImagePrototype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.black,
        ),
      ),
    );
  }
}