import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ramptht_health/pages/home_page.dart';

import '../login_screen.dart';

class AuthService {
  // handle Auth state()
  //determine if the user is authenticated
  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return const LoginScreen();
        }
      }),
    );
  }

  //signinwithgoogle()
  signInWithGoogle() async {
    //Trigger the authentication flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    //Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    //Create a new credential
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    //Once signed in, retutn the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  //signout()
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
