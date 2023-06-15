// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:patientcareapp/pages/home_page.dart';
import 'package:patientcareapp/pages/login_page.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // When user is logged in
          if (snapshot.hasData) {
            return HomePage();
          }

          // When User is not logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
