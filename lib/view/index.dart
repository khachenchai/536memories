import 'package:blt/view/add_post.dart';
import 'package:blt/view/post_detail.dart';
import 'package:blt/widgets/contents.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text("Developed by Khachenchai PKW-SS", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Text("ยินดีต้อนรับ ", style: TextStyle(color: Colors.white, fontSize: 20),),
                TextButton(
                  onPressed: () {}, 
                  child: const Text("คเชนทร์ชัย", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
                const SizedBox(
                  width: 12,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                  onPressed: () {
                    signOut();
                  }, 
                  child: const Center(
                    child: SizedBox(
                      height: 160,
                      child: Center(child: Text("ออกจากระบบ", style: TextStyle(color: Colors.white, fontSize: 20))),
                    ),
                  )
                )
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            Text("536 Memories", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            Text("ที่เก็บภาพ ความทรงจำต่างๆของ 536 <3", style: TextStyle(fontSize: 20, color: Colors.grey)),
            Divider(
              thickness: 2,
            ),
            Contents()
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPostPage())),
        child: const Icon(Icons.add, size: 28, color: Colors.white),
      ),
    );
  }

  Future signOut() async {
    
  }
}