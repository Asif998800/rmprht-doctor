import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ramptht_health/pages/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: AuthService().handleAuthState(),
      home: const LoginScreen(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
