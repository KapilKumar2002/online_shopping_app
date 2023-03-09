import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/registerpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset("assets/logo.jpeg")),
    );
  }
}
