import 'package:blt/widgets/post_cards.dart';
import 'package:flutter/material.dart';

class Contents extends StatefulWidget {
  const Contents({Key? key}) : super(key: key);

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.green.shade900,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        // child: GridView(gridDelegate: SliverGridDelegate()),
        child: GridView.count(
          // primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 28,
          mainAxisSpacing: 32,
          crossAxisCount: 3,
          children: const <Widget>[
            // Container(
            //   padding: const EdgeInsets.all(8),
            //   color: Colors.teal[100],
            //   child: const Text("He'd have you all unravel at the"),
            // ),
            PostCards(),
            PostCards(),
            PostCards(),
            PostCards(),
            PostCards(),
            PostCards(),
          ],
        ),
      ),
    );
  }

  
}