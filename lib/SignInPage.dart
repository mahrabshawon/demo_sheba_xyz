import 'package:demo_xyz/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'SigunUp.dart';
import 'main.dart';

// void main() => runApp(const signIn());

class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

  static const String _title = 'Demo.xyz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            _title,
            style: TextStyle(color: Colors.black, fontFamily: "InterR"),
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.black,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DemoXyz(),
                ),
              ),
              child: Text("Skip"),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
          backgroundColor: Color(0xFF32C7CC),
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF32C7CC),
              Color(0xFF07D765),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(15),
                child: const Text(
                  'Welcome Back!\nLet\'s sign you in',
                  style: TextStyle(
                      fontFamily: "InterR",
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
            SizedBox(
              height: 5.h,
            ),
            //UserName
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
              height: 10.h,
              //color: Colors.amber,
              child: TextField(
                controller: nameController,
                //readOnly: true,
                showCursor: true,
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xFF9A9A9A), width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'UserName',
                ),
              ),
            ),

            //Password
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10.h,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
              //height: 18.h,
              child: TextField(
                cursorColor: Colors.orange,
                obscureText: true,
                controller: passwordController,
                showCursor: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xFF9A9A9A), width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xFF9A9A9A)),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 10.h,
                padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "InterR",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Container(
              width: double.infinity,
              height: 20.h,
              child: Row(
                children: <Widget>[
                  const Text(
                    'Does not have account?  ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontFamily: "InterR",
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signUppage(),
                      ),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}