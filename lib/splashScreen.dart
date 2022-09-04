import 'dart:async';

import 'package:demo_xyz/signIn_api.dart';
import 'package:flutter/material.dart';
import 'SignInRoute.dart';
import 'Authentication/loginPageAuth.dart';
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
            builder: (_) => SignInScreenn(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        padding: EdgeInsets.all(17.0),
        decoration: BoxDecoration(
          // color: Color();
            image: DecorationImage(
              image: AssetImage('assets/landing page.png'),
              fit: BoxFit.cover,
            ),
            ),
        // child: Container(
        //   child: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Image.asset('assets/service.jpg'),
        //         SizedBox(
        //           height: 30,
        //         ),
        //         CircularProgressIndicator(
        //           valueColor: AlwaysStoppedAnimation(Colors.black),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),



      // body: Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     color: Color(0xFFFFB317),
      //     // gradient: LinearGradient(
      //     //   begin: Alignment.topRight,
      //     //   end: Alignment.bottomLeft,
      //     //   colors: [
      //     //     Color(0xFFFFB317),
      //     //     Color(0xFF07D765),
      //     //   ],
      //     // ),
      //   ),
      //   child: Container(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           "Service.xyz",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 40,
      //             color: Colors.black,
      //             fontFamily: "InterR",
      //           ),
      //         ),
      //         Text(
      //           "womenindigital.net",
      //           style: TextStyle(
      //
      //             fontSize: 20,
      //             color: Colors.black,
      //             fontFamily: "InterR",
      //           ),
      //         ),
      //         SizedBox(
      //           height: 30,
      //         ),
      //         CircularProgressIndicator(
      //           valueColor: AlwaysStoppedAnimation(Colors.black),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
