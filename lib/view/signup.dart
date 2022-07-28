import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final firstnameCtl = TextEditingController();
  final surnameCtl = TextEditingController();
  final emailCtl = TextEditingController();
  final passwordCtl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Card(
          elevation: 5,
          child: Container(
            padding: const EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.height / 1.5,
            child: Form(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  const Text("Sign Up", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Divider(
                    thickness: 2.5,
                    
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: firstnameCtl,
                    decoration: const InputDecoration(
                      labelText: 'ชื่อจริง / Firstname',
                      labelStyle: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: surnameCtl,
                    decoration: const InputDecoration(
                      labelText: 'นามสกุล / Surname',
                      labelStyle: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: emailCtl,
                    decoration: const InputDecoration(
                      labelText: 'อีเมล / Email',
                      labelStyle: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: passwordCtl,
                    decoration: const InputDecoration(
                      labelText: 'รหัสผ่าน / Password',
                      labelStyle: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  const SizedBox(height: 44),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade400)
                    ),
                    onPressed: () {}, 
                    child: const SizedBox(
                      height: 48,
                      child: Center(child: Text("Sign Up", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)),
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