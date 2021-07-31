import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_liquid_swipe_project/login_and_signup/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plateno",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
