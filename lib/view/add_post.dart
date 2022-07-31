import 'package:blt/models/post.dart';
import 'package:blt/widgets/image_ptt.dart';
import 'package:flutter/material.dart';

// import '../models/ex.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {

  final postTextController = TextEditingController();
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
                    InkWell(
                      onTap: () => chooseImage(),
                      child: Card(
                        elevation: 2,
                        // shape: ,
                        child: Container(
                          decoration: BoxDecoration(
                            // color: const Color.fromARGB(16, 147, 147, 147),
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.add, size: 72, color: Colors.white, shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      blurRadius: 24,
                                      offset: Offset(0, 0),
                                    )
                                  ]
                                ),
                                Text("โปรดเลือกรูปภาพ", style: TextStyle(fontSize: 16, color: Colors.white70)),
                              ],
                            ),
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3.25,
                          width: double.infinity,
                          child: GridView(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            scrollDirection: Axis.horizontal,
                            children: const [
                              ImagePrototype(),
                              ImagePrototype(),
                              ImagePrototype(),
                              ImagePrototype(),
                              ImagePrototype(),
                              ImagePrototype(),
                              ImagePrototype(),
                            ],
                          ),
                        ),
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
              child: Form(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    TextFormField(
                      maxLength: 200,
                      maxLines: null,
                      buildCounter: (BuildContext context, {int? currentLength, int? maxLength, bool? isFocused}) {
                        return Text("$currentLength/$maxLength");
                      },
                      decoration: const InputDecoration(
                        labelText: "ชื่อโพสต์",
                        
                        labelStyle: TextStyle(fontSize: 24),
                        
                      ),
                      controller: postTextController,
                      // readOnly: true,
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton.icon(
                      onPressed: () {
                        print(postTextController.text);
                        postTextController.clear();
                      }, 
                      icon: const Icon(Icons.add, color: Colors.white, size: 36), 
                      label: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("เพิ่มโพสต์", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                      )
                    )
                  ],
                
                ),
              )
            ),
          ),
        ],
      ),
    );
  }

  Future chooseImage() async {

  }
}