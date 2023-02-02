import 'package:app_project/login_credentials.dart';
import 'package:app_project/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance
            .authStateChanges(), //revisa sesta logeado el usuraio contantemente
        builder: (context, snapshot) {
          //user is logedin
          if (snapshot.hasData) {
            return HomePage();
          }
          //user is NOT logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
