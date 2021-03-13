import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screens/Auth/Tops/homepage.dart';
import 'package:myapp/Screens/Auth/Tops/sign_in_pg.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch()<User>();
    if (firebaseUser != null) {
      return HomePage();
    }
    return SignInPage();
  }
}
