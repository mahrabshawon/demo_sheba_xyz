// import 'package:flutter/material.dart';
//
// void main() => runApp(const signUpApi());
//
// class signUpApi extends StatelessWidget {
//   const signUpApi({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Signup as Service Provider'),
//           backgroundColor: Color(0xFFFFB317),
//         ),
// body: ,
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'SignInRoute.dart';
import 'main.dart';

// void main() => runApp(const signUpApi());

class signUpApi extends StatelessWidget {
  const signUpApi({Key? key}) : super(key: key);

  static const String _title = 'Demo.xyz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     _title,
        //     style: TextStyle(color: Colors.black, fontFamily: "InterR"),
        //   ),
        //   // actions: <Widget>[
        //   //   FlatButton(
        //   //     textColor: Colors.black,
        //   //     child: Text("Skip"),
        //   //     onPressed: () => Navigator.push(
        //   //       context,
        //   //       MaterialPageRoute(
        //   //         builder: (context) => BottomNavigation(),
        //   //       ),
        //   //     ),
        //   //     shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
        //   //   ),
        //   // ],
        //   //backgroundColor: Color(0xFF32C7CC),
        //   backgroundColor: Color(0xFFFFB317),
        // ),

        appBar: AppBar(
          title: Text('Signup as Service Provider'),
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
            height: 21,

          ),

          Container(
              padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
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
            padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
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
            padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
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
            padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
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
              padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                child: Text(
                  'Register Now',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 2.h,
                      fontFamily: "InterR",
                      fontWeight: FontWeight.bold),
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
                // GestureDetector(
                //     child: const Text(
                //       'Sign In',
                //       style: TextStyle(
                //           color: Colors.orange,
                //           fontSize: 16,
                //           fontFamily: "InterR",
                //           fontWeight: FontWeight.bold),
                //     ),
                //     onTap: () => {
                //
                //
                //       if (Navigator.of(context).canPop())
                //         {Navigator.of(context).pop()}
                //     }
                //   //     Navigator.push(
                //   //   context,
                //   //   MaterialPageRoute(
                //   //     builder: (context) => SignInRoute(),
                //   //   ),
                //   // ),
                //
                // )
                GestureDetector(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color(0xFFFFB317),
                        fontSize: 1.8.h,
                        fontFamily: "InterR",
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Demo_XYZ(),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
