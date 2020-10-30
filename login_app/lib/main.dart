import 'package:flutter/material.dart';
import 'package:login_app/screens/signin.dart';

import 'screens/signup.dart';
//import 'package:login_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devrnz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.orange,
        backgroundColor: Colors.orange.shade300,
      ),
      home: SignupScreen(),
    );
  }
}
