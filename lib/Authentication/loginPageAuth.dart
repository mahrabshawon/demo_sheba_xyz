import 'package:demo_xyz/Authentication/reset_pass.dart';
import 'package:demo_xyz/Authentication/signUp_Auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_signin/reusable_widgets/reusable_widget.dart';
// import 'package:firebase_signin/screens/home_screen.dart';
// import 'package:firebase_signin/screens/reset_password.dart';
// import 'package:firebase_signin/screens/signup_screen.dart';
// import 'package:firebase_signin/utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../reusable_widgets.dart';
import '../utils/color.dart';
import 'home_ss.dart';

class SignInScreenn extends StatefulWidget {
  const SignInScreenn({Key? key}) : super(key: key);

  @override
  _SignInScreennState createState() => _SignInScreennState();
}

class _SignInScreennState extends State<SignInScreenn> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Signin",
          style: TextStyle(color: Colors.black, fontFamily: "InterR"),
        ),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.black,
            child: Text("Skip"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigation(),
              ),
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],

        // backgroundColor: Colors.transparent,
        backgroundColor: Color(0xFFFF9900),
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
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Text('Lets login here'),
                // logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreenn()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }


  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}
