// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:patientcareapp/components/form_button.dart';
import 'package:patientcareapp/components/text_fields.dart';
import 'package:patientcareapp/components/icon_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // User Sign in method
  void signUserIn() async {
    //  loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in method
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      // If the email is wrong
      if (e.code == 'usincorrect-email') {
        // show error to user
        wrongEmailMessage();
      }

      // If the password is incorrect
      else if (e.code == 'incorrect-password') {
        // show error to user
        wrongPasswordMessage();
      }
    }
  }

  // popup the incorrect email message
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Adjust the value as desired
          ),
          backgroundColor: Color.fromARGB(255, 232, 230, 230),
          title: Center(
            child: Text(
              'Incorrect email address !!!',
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }

  // popup the incorrect password message
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Adjust the value as desired
          ),
          backgroundColor: Color.fromARGB(255, 232, 230, 230),
          title: Center(
            child: Text(
              'Password is incorrect !!!',
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
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

            const SizedBox(
              height: 10,
            ),

            Text("Wellcome to InteliTrend",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold)),

            const SizedBox(
              height: 30,
            ),

            // Email Field
            FormTextField(
              controller: emailController,
              hintText: 'Enter Your Email',
              obscureText: false,
            ),

            const SizedBox(
              height: 8,
            ),

            // Password text field
            FormTextField(
              controller: passwordController,
              hintText: 'Enter Your Password',
              obscureText: true,
            ),

            const SizedBox(
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

            const SizedBox(
              height: 30,
            ),

            // Sign in button
            FormButton(onTap: signUserIn),

            const SizedBox(
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

            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Google button
                SquarTile(imagePath: 'assets/google.png'),

                SizedBox(
                  height: 20,
                ),

                // Apple button
                SquarTile(imagePath: 'assets/apple.png')
              ],
            ),

            const SizedBox(
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
                const Text(
                  " Register Now",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
