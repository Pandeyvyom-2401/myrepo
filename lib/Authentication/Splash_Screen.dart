import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Welcome_Page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  var curropacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {
        curropacity = 1.0;
      });
    });
    Timer(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Welcome_page()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: AnimatedOpacity(
          opacity: curropacity,
          duration: Duration(seconds: 2),
          child: Center(
            child: Text(
              "Authenticator",
              style: TextStyle(
                color: Colors.redAccent.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 70,
                fontFamily: 'Splash',
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}