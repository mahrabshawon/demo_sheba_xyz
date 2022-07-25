import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Model/SubCategory.dart';
import 'order.dart';

class SingleDetailsRoute extends StatelessWidget {
  int checkedIndex;

  SingleDetailsRoute(this.checkedIndex, {Key? key}) : super(key: key);

  List<SubCategory> subCategories = SubCategory.subCategories;
  List<String> includeList = [
    'AC Filter Cleaning With Air Conditioner Brush(Indoor Only',
    'AC Panel Cleaning',
    'Checking and Testing of the electrical parts',
    '7 Days Service Warranty',
    'Check "Additional"work Scope & Price Excludes Sections for the Services that are not covered within the services'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(subCategories[checkedIndex].title),
          centerTitle: false,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          width: width,
          height: MediaQuery.of(context).size.height - // total height
              kToolbarHeight - // top AppBar height
              MediaQuery.of(context).padding.top - // top padding
              kBottomNavigationBarHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 15, right: 15,top: 11),
                //   child: Container(
                //     margin: EdgeInsets.symmetric(vertical: 20.0),
                //     height: 23,
                //     child: ListView(
                //       scrollDirection: Axis.horizontal,
                //       children: <Widget>[
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'OverView',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'Details',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'Service Request',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'Service Request',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'FAQ',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'Why Choose Us',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 9),
                //           child: Container(
                //               width: 160.0,
                //               color: Colors.orange,
                //               child: Expanded(
                //                 child: Text(
                //                   'Reviews',
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(fontSize: 17),
                //                 ),
                //               )),
                //         ),
                //       ],
                //     ),
                //
                //     // child: Row(
                //     //
                //     //   children: const <Widget>[
                //     //     // Expanded(
                //     //     //   child: Text('OverView',textAlign: TextAlign.center,
                //     //     //     style: TextStyle(fontSize: 11),
                //     //     //   ),
                //     //     // ),
                //     //     Card(
                //     //       child: Expanded(
                //     //         child: Text(
                //     //           'OverView',
                //     //           textAlign: TextAlign.center,
                //     //           style: TextStyle(fontSize: 13),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //
                //     //     Card(
                //     //       child: Expanded(
                //     //         child: Text(
                //     //           'Details',
                //     //           textAlign: TextAlign.center,
                //     //           style: TextStyle(fontSize: 11),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //     Card(
                //     //       child: Expanded(
                //     //         child: Text(
                //     //           'Service Request',
                //     //           textAlign: TextAlign.center,
                //     //           style: TextStyle(fontSize: 11),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //     Card(
                //     //       child: Expanded(
                //     //         child: Text(
                //     //           'FAQ',
                //     //           textAlign: TextAlign.center,
                //     //           style: TextStyle(fontSize: 11),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //     Card(
                //     //       child: Expanded(
                //     //         child: Text(
                //     //           'Why Choose Us',
                //     //           textAlign: TextAlign.center,
                //     //           style: TextStyle(fontSize: 11),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //     Card(
                //     //       child: Expanded(
                //     //         child: Text(
                //     //           'Reviews',
                //     //           textAlign: TextAlign.center,
                //     //           style: TextStyle(fontSize: 11),
                //     //         ),
                //     //       ),
                //     //     ),
                //     //   ],
                //     // ),
                //   ),
                // ),

                //banner image
                Container(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                    width: width,
                    height: 30.h,
                    child: GestureDetector(
                      onTap: () => {
                        //print('$checkedIndex is when title $subCategories[checkedIndex].title'),
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                            AssetImage(subCategories[checkedIndex].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
                // After Banner text
                Container(
                  padding: EdgeInsets.fromLTRB(2.5.w, 0, 2.5.w, 8),
                  width: width,
                  height: 8.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color:Colors.red,
                        child: Text(
                          r'Start From: $399',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 2.h,
                            fontFamily: "InterS",
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Text(
                          '* 4.67',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 3.h,
                            // fontFamily: "InterR",
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Short features list
                Container(
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                color: Colors.grey,
                                child: Container(
                                  height: 2.h,
                                  width: 2.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/close-small.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                            Expanded(
                              child: Text(
                                'Trusted & Reliable Ac Technicians',
                                style: TextStyle(fontSize: 2.h),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                color: Colors.grey,
                                child: Container(
                                  height: 2.h,
                                  width: 2.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/close-small.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                            Expanded(
                              child: Text(
                                'On Time Work Completion',
                                style: TextStyle(fontSize: 2.h),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //List of Features
                Container(
                  width: width,
                  height: 5.h,
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                  child: Text(
                    'Whats Included?',
                    style:
                    TextStyle(fontSize: 2.5.h, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: width,
                  height: 50.h,
                  child: ListView.builder(
                    itemCount: includeList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        //padding: EdgeInsets.fromLTRB(0, .6.h, 0, .6.h),
                        child: ListTile(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Transform.translate(
                                offset: const Offset(0, -8),
                                child: const Text(
                                  '•',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              SizedBox(width: 2.w),
                              Expanded(
                                child: Text(includeList[index].toString()),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(),
          child: Container(
            child: Container(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange, // background
                ),
                child: Text(
                  'Order Now',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //subCategories[index].serID
                      builder: (context) => order(),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
