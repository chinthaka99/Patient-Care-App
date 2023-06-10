// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPagestate();
}

class _LoginPagestate extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 10,
            ),

            Container(
              width: 217,
              height: 53,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/logo.png')),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Text("Wellcome to InteliTrend",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold)),

            SizedBox(
              height: 30,
            ),

            // Email Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Email',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 8,
            ),

            // Password text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Password',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(245, 240, 184, 0),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Raleway', fontSize: 18),
                )),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Not Register?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                ),
                Text(
                  " Register Now",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
