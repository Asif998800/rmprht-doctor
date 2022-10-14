import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/location_screen.dart';

class PhoneAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(context) async {
    //check user data exists or not
    final QuerySnapshot result =
        await users.where('uid', isEqualTo: user?.uid).get();
    List<DocumentSnapshot> document = result.docs; //list of user data

    if (document.isNotEmpty) {
      //user data exists
      //so jusy skip firestore

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LocationScreen(),
        ),
      );
    } else {
      //user data does not exists
      //add user data to firebase

      return users.doc(user!.uid).set({
        'uid': user!.uid,
        'mobile': user?.phoneNumber,
        'email': user!.email
      }).then((value) {
        //after add data to firebase then will go to screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LocationScreen(),
          ),
        );
      }).catchError((error) => print("Failed to add user:$error"));
    }
  }
}
