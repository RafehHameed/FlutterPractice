// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final mycontroller = TextEditingController();
  final mycontroller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_Mobile_login_re_9ntv.png",
            fit: BoxFit.cover,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            child: Column(children: [
              TextFormField(
                controller: mycontroller,
                decoration: InputDecoration(
                    hintText: "Enter UserName", labelText: "UserName"),
              ),
              TextFormField(
                controller: mycontroller1,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  print(
                      "Hi ${mycontroller.text} with password ${mycontroller1.text}");
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
