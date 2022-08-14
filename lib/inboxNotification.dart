// import 'package:flutter/material.dart';
//
// class myOrder extends StatelessWidget {
//   const myOrder({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//
//     );
//   }
// }
import 'package:demo_xyz/serviceReq.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'SignInRoute.dart';
import 'SignUpRoute.dart';
import 'callOption.dart';
import 'inbox.dart';
import 'order.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Order',
            style: TextStyle(color: Colors.black, fontFamily: "InterR"),
          ),

          //backgroundColor: Color(0xFF32C7CC),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFB317),
          ),
          child: Column(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                children: [
                  Image.asset('assets/order-not-login.png'),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 17, left: 17, top: 11, bottom: 3),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.login_rounded,
                                  color: Colors.black,
                                  size: 5.h,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Demo_XYZ()),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFFE5E5E5),
                                  ),
                                ),
                                label: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //           height: 5.h,
                          //         ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 17, left: 17, top: 11, bottom: 3),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.app_registration_rounded,
                                  color: Colors.black,
                                  size: 5.h,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => inbox()),
                                  );
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFFE5E5E5),
                                  ),
                                ),
                                label: Text(
                                  'SigUp',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
          ]),

        ),
      ),
    );
  }
}
