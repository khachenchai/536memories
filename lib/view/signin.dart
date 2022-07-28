import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailCtl = TextEditingController();
  final passwordCtl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height / 2;
    double height = MediaQuery.of(context).size.height / 2.3;

    return Scaffold(
      backgroundColor: const Color(0xFFB3E4FF),
      body: Center(
        child: Card(
          elevation: 4,
          child: Container(
            padding: const EdgeInsets.all(12),
            height: height,
            width: width,
            child: Form(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  const Text("Sign In", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  // const SizedBox(height: 8),
                  // const Divider(
                  //   thickness: 2.5,
                  // ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: emailCtl,
                    decoration: const InputDecoration(
                      // floatingLabelStyle: TextStyle(
                      //   color: Colors.green
                      // ),
                      labelText: 'เลขนักเรียน /  Student ID',
                      labelStyle: TextStyle(
                        fontSize: 16
                      )
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: passwordCtl,
                    decoration: const InputDecoration(
                      labelText: 'เลขบัตรประชาชน 13 หลัก / Identity Card 13 digits',
                      labelStyle: TextStyle(
                        fontSize: 15
                      )
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 109, 219, 255))
                    ),
                    onPressed: () {}, 
                    child: const SizedBox(
                      height: 48,
                      child: Center(child: Text("เข้าสู่ระบบ / Sign In", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700))),
                    )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}