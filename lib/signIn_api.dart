import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';
import 'package:demo_xyz/signIn_api.dart';

import 'main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static const String _title = 'Demo.xyz';

  void login(String email, password) async {
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _title,
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
          //backgroundColor: Color(0xFF32C7CC),
          backgroundColor: Color(0xFFFFB317),
        ),
        // appBar: AppBar(
        //   title: const Text('Sign Up Api'),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Email '),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  login(emailController.text.toString(),
                      passwordController.text.toString());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFB317),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('Login'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
