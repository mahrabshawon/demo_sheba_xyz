import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'SignInRoute.dart';
import 'main.dart';

// void main() => runApp(const signIn());

class SignUpRoute extends StatelessWidget {
  const SignUpRoute({Key? key}) : super(key: key);

  static const String _title = 'Demo.xyz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFB317),
        ),
        body: SingleChildScrollView(child: const MyStatefulWidget()),
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

  get emailController => null;

  get confitmpasswordController => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        // gradient: LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   colors: [
        //     Color(0xFF32C7CC),
        //     Color(0xFF07D765),
        //   ],
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Create An Account',
                style: TextStyle(
                    fontFamily: "InterR",
                    color: Color(0xFFFFB317),
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              )),
          SizedBox(
            height: 3.h,
          ),
          //UserName
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            height: 10.h,
            //color: Colors.amber,
            child: TextField(
              controller: nameController,
              // readOnly: true,
              showCursor: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                  const BorderSide(color: Color(0xFF9A9A9A), width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'UserName',
              ),
            ),
          ),
          //Email Or Mobile Numbe
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            height: 10.h,
            //color: Colors.amber,
            child: TextField(
              controller: nameController,
              // readOnly: true,
              showCursor: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                  const BorderSide(color: Color(0xFF9A9A9A), width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Email Or Mobile Number',
              ),
            ),
          ),
          //Password
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.h,
            padding: EdgeInsets.all(10),
            //height: 18.h,
            child: TextField(
              cursorColor: Colors.grey,
              obscureText: true,
              controller: passwordController,
              // readOnly: true,
              showCursor: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                  const BorderSide(color: Color(0xFF9A9A9A), width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
              ),
            ),
          ),
          //Confirm Password
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 10.h,
          //   padding: EdgeInsets.all(10),
          //   //height: 18.h,
          //   child: TextField(
          //     cursorColor: Colors.grey,
          //     obscureText: true,
          //     controller: passwordController,
          //     // readOnly: true,
          //     showCursor: true,
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(
          //         borderSide:
          //             const BorderSide(color: Color(0xFF9A9A9A), width: 1.0),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.black, width: 1.0),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       hintText: 'Confirm Password',
          //     ),
          //   ),
          // ),
          Container(
              width: double.infinity,
              height: 10.h,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                child: Text(
                  'Submit Data',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "InterR",
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFB317),
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
                  'Already have an account?  ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                        fontFamily: "InterR",
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInRoute(),
                    ),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}