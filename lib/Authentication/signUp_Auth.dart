import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_signin/reusable_widgets/reusable_widget.dart';
// import 'package:firebase_signin/screens/home_screen.dart';
// import 'package:firebase_signin/utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../reusable_widgets.dart';
import '../utils/color.dart';
import 'home_ss.dart';
import 'loginPageAuth.dart';

class SignUpScreenn extends StatefulWidget {
  const SignUpScreenn({Key? key}) : super(key: key);

  @override
  _SignUpScreennState createState() => _SignUpScreennState();
}

class _SignUpScreennState extends State<SignUpScreenn> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("FF9900"),
            hexStringToColor("FF9900"),
            hexStringToColor("FF9900"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email Id", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Sign Up", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    print("Created New Account");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreenn()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ))),
    );

  }
}
