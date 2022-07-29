import 'package:blt/view/post_detail.dart';
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
          children: <Widget>[
            // Container(
            //   padding: const EdgeInsets.all(8),
            //   color: Colors.teal[100],
            //   child: const Text("He'd have you all unravel at the"),
            // ),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PostDetailPage())),
              child: Card(
                elevation: 3,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(16, 147, 147, 147),
                  ),
                  child: Hero(
                    tag: 'image1',
                    child: Image.asset('assets/kong.jpg', fit: BoxFit.none)
                  )
                ),
              ),
            ),
            const PostCards(),
            const PostCards(),
            const PostCards(),
            const PostCards(),
            const PostCards(),
            const PostCards(),
            
          ],
        ),
      ),
    );
  }

  
}