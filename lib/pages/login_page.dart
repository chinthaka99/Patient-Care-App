// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:patientcareapp/components/form_button.dart';
import 'package:patientcareapp/components/text_fields.dart';
import 'package:patientcareapp/components/icon_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // User Sign in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),

            Container(
              width: 217,
              height: 53,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              margin: const EdgeInsets.only(top: 50),
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
            FormTextField(
              controller: usernameController,
              hintText: 'Enter Your Email',
              obscureText: false,
            ),

            SizedBox(
              height: 8,
            ),

            // Password text field
            FormTextField(
              controller: null,
              hintText: 'Enter Your Password',
              obscureText: true,
            ),

            SizedBox(
              height: 20,
            ),

            // Forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 63, 63, 63)),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // Sign in button
            FormButton(onTap: signUserIn),

            SizedBox(
              height: 20,
            ),

            // continue with section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.6,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Google button
                SquarTile(imagePath: 'assets/google.png'),

                const SizedBox(
                  height: 20,
                ),

                // Apple button
                SquarTile(imagePath: 'assets/apple.png')
              ],
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
