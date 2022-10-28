import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_kost/pages/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/logo1.png",
            width: 60,
            height: 60,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _usernamecontroller,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: _emailcontroller,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "hunter@gmail.com",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: _passwordcontroller,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(270),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              onPressed: () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: _emailcontroller.text,
                        password: _passwordcontroller.text)
                    .then((value) {
                  print("Create New Account");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  ).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                });
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white,
                fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
