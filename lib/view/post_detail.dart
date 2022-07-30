import 'package:blt/models/ex.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {

  bool isLike = false;
  int likeCount = 1;
  int commentCount = 5;
  final commentCtl = TextEditingController();
  String postOwner = "Khachenchai";
  List comments = [
    {
      "name": "นายสมชาย สมชาย",
      "comment" : "ความคิดเห็นที่ 1",
    },
    {
      "name": "นายสมหญิง สมชาย",
      "comment" : "ความคิดเห็นที่ 2",
    },
    {
      "name": "นายประโยชน์ จันทร์อังคารพุธ",
      "comment" : "ความคิดเห็นที่ 3",
    },
    {
      "name": "นายคเชนทร์ช้อย ใจเกเร",
      "comment" : "ว้าวๆๆ",
    },
    {
      "name": "นายประวิด พื้นสามสิบที",
      "comment" : "ไปวิดพื้น!!!",
    },
  ];

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
                    // signOut();
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
      body: Row(
        children: [
          Expanded(
            child: SizedBox(
              // color: Colors.red,
              width: double.infinity,
              height: double.infinity,
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 2,
                      // shape: ,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(16, 147, 147, 147),
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Hero(
                          tag: 'image1',
                          child: Image.asset("assets/kong.jpg", fit: BoxFit.none,)
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("หล่อเท่ห์กว่านี้ไม่มีอีกแล้ว", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("โพสต์โดย $postOwner", style: const TextStyle(fontSize: 16),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("โพสต์เมื่อ 12 ก.ค. 65", style: TextStyle(fontSize: 12, color: Colors.grey),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      padding: const EdgeInsets.only(right: 12, left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isLike = !isLike;
                                        likeCount += isLike ? 1 : -1;
                                      });
                                    }, 
                                    icon: Icon(
                                      isLike ? Icons.favorite : Icons.favorite_border,
                                      size: 30,
                                      color: isLike ? Colors.red : Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    likeCount == 0 ? "" : likeCount.toString(),
                                    style: const TextStyle(fontSize: 20)
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {}, 
                                icon: const Icon(Icons.share_outlined, size: 30, color: Colors.lightBlue),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.comment_outlined, size: 30),
                              const SizedBox(width: 4),
                              Text(
                                commentCount == 0 ? "" : commentCount.toString(),
                                style: const TextStyle(fontSize: 20)
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
          const Divider(height: double.infinity, color: Colors.black, thickness: 5),
          Expanded(
            child: Container(
              // color: Colors.blue,
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  ...comments.map((comment) {
                    return ListTile(
                      leading: const CircleAvatar(
                        // backgroundImage: NetworkImage(comment["avatar"]),
                      ),
                      title: Text(comment["comment"], style: const TextStyle(fontSize: 18)),
                      subtitle: Text(comment["name"]),
                    );
                  }),
                  const SizedBox(height: 10),
                  const Divider(height: 1, color: Colors.black87, thickness: 0.5),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: const CircleAvatar(
                      // backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
                    ),
                    title: TextField(
                      controller: commentCtl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "แสดงความคิดเห็น",
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          comments.add(
                            Ex(
                              name: 'Anda',
                              comment: commentCtl.text
                            ).toJson()
                          );
                        });
                        commentCtl.clear();
                        // print(commentCtl.text);
                      },
                      icon: const Icon(
                        Icons.send_sharp, 
                        size: 28,
                        // color: commentCtl.text.isEmpty ? Colors.grey : Colors.blue,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              
              )
            ),
          ),
        ],
      ),
    );
  }
}
