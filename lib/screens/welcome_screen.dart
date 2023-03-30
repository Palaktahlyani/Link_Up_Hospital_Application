import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';

import '../widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color.fromARGB(255, 133, 235, 247),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarRoots(),
                      ));
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "images/result.png",
                height: 350,
              ),
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen())),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 244, 248, 249)),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen())),
                    style: TextButton.styleFrom(
                      // backgroundColor: Color.fromARGB(255, 133, 235, 247)
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 133, 235, 247))),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
