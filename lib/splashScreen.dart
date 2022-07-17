import 'dart:async';

import 'package:flutter/material.dart';

import 'SignInPage.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => signIn(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/service.jpg'),
                  SizedBox(
                    height: 30,
                  ),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}