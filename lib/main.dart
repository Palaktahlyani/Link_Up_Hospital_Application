import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/welcome_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
