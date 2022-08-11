import 'package:demo_xyz/serviceReq.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'callOption.dart';
import 'order.dart';

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Help',
            style: TextStyle(color: Colors.black, fontFamily: "InterR"),
          ),

          //backgroundColor: Color(0xFF32C7CC),
          backgroundColor: Color(0xFFFFB317),

        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFB317),
          ),
          child: Column(children: <Widget>[
            Wrap(
              children: [
                Image(
                  image: AssetImage('assets/Frame44.png'),
                ),
              ],
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 17, left: 17),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.medical_services_rounded,
                                color: Colors.black,
                                size: 5.h,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => servicereq()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xFFFE5E5E5),
                                ),
                              ),
                              label: Text(
                                'Service Request',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //           height: 5.h,
                        //         ),
                        Padding(
                          padding: const EdgeInsets.only(right: 17, left: 17,top: 11,bottom: 1),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.contact_page,
                                color: Colors.black,
                                size: 5.h,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => callOption()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color(0xFFFE5E5E5),
                                ),
                              ),
                              label: Text(
                                'Lets Call',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
          ]),
        ),
      ),

      // body: Container(
      //   decoration: BoxDecoration(
      //     color: Color(0xFFFFB317),
      //   ),
      //   child: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     padding: EdgeInsets.only(top: 0),
      //     child: Column(
      //       children: [
      //         // ElevatedButton(
      //         //
      //         //   onPressed: null,
      //         //   child: const Text('Disabled'),
      //         // ),
      //
      //         // Container(
      //         //   width: MediaQuery.of(context).size.width,
      //         //   height: 35.h,
      //         //   decoration: BoxDecoration(
      //         //     image: DecorationImage(
      //         //       image: AssetImage('assets/Frame4.png'),
      //         //       fit: BoxFit.cover,
      //         //     ),
      //         //   ),
      //         // ),
      //         Wrap(
      //           children: [
      //             Image(
      //               image: AssetImage('assets/Frame44.png'),
      //             )
      //           ],
      //         ),
      //         // SizedBox(
      //         //   height: 25.h,
      //         // ),
      //         //
      //         // Padding(
      //         //   padding: const EdgeInsets.all(8.0),
      //         //   child: Container(
      //         //     width: MediaQuery.of(context).size.width,
      //         //     height: 7.h,
      //         //     child: ElevatedButton.icon(
      //         //       icon: Icon(
      //         //         Icons.room_service_rounded,
      //         //         color: Colors.black,
      //         //         size: 3.h,
      //         //       ),
      //         //       onPressed: () {
      //         //         Navigator.push(
      //         //           context,
      //         //           MaterialPageRoute(builder: (context) => servicereq()),
      //         //         );
      //         //       },
      //         //       style: ButtonStyle(
      //         //         backgroundColor: MaterialStateProperty.all(
      //         //           Color(0xFFFE5E5E5),
      //         ),
      //       ),
      //       label: Text(
      //         'Service Request',
      //         style: TextStyle(color: Colors.black),
      //       ),
      //     ),
      //   ),
      // ),
      // SizedBox(
      //   height: 1.h,
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: 7.h,
      //     child: ElevatedButton.icon(
      //       icon: Icon(
      //         Icons.contact_page,
      //         color: Colors.black,
      //         size: 3.h,
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => callOption()),
      //         );
      //       },
      //       style: ButtonStyle(
      //         backgroundColor: MaterialStateProperty.all(
      //           Color(0xFFFE5E5E5),
      //         ),
      //       ),
      //       label: Text(
      //         'Lets Call',
      //         style: TextStyle(color: Colors.black),
      //       ),
      //     ),
      //   ),
      // ),
      //       ],
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(),
      //   child: Container(
      //     padding: EdgeInsets.all(8),
      //     child: Column(
      //       children: [
      //         ElevatedButton.icon(
      //           icon: Icon(
      //             Icons.room_service_rounded,
      //             color: Colors.black,
      //             size: 3.h,
      //           ),
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => servicereq()),
      //             );
      //           },
      //           style: ButtonStyle(
      //             backgroundColor: MaterialStateProperty.all(
      //               Color(0xFFFE5E5E5),
      //             ),
      //           ),
      //           label: Text(
      //             'Service Request',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //         ElevatedButton.icon(
      //           icon: Icon(
      //             Icons.room_service_rounded,
      //             color: Colors.black,
      //             size: 3.h,
      //           ),
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => servicereq()),
      //             );
      //           },
      //           style: ButtonStyle(
      //             backgroundColor: MaterialStateProperty.all(
      //               Color(0xFFFE5E5E5),
      //             ),
      //           ),
      //           label: Text(
      //             'Service Request',
      //             style: TextStyle(color: Colors.black),
      //           ),
      //         ),
      //       ],
      //     ),
      //
      //   ),
      // ),
    );
  }
}
