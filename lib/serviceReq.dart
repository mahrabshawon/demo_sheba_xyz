
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'main.dart';

class servicereq extends StatelessWidget {
  const servicereq({Key? key}) : super(key: key);

  static const String _title = 'Demo.xyz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Service Request',
            style: TextStyle(color: Colors.black, fontFamily: "InterR"),
          ),


          //backgroundColor: Color(0xFF32C7CC),
          backgroundColor: Color(0xFFFFB317),
        ),

        body: serviceReq(),

      ),
    );
  }
}

class serviceReq extends StatefulWidget {
  serviceReq({Key? key}) : super(key: key);

  @override
  State<serviceReq> createState() => _serviceReqState();
}

class _serviceReqState extends State<serviceReq> {
  TextEditingController serviceController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      scrollDirection: Axis.vertical,

      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top:0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Container(
              width: MediaQuery.of(context).size.width,
              height: 35.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tell-us.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(
              height: 5.h,
            ),
            //UserName
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10.h,
              padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
              //color: Colors.amber,
              child: TextField(
                controller: serviceController,
                //readOnly: true,
                showCursor: true,
                cursorColor: Color(0xFFFFB317),
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
                  hintText: 'Service Name',
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
                cursorColor: Color(0xFFFFB317),
                obscureText: true,
                controller:contactController,
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
                  hintText: 'Contact Number',
                ),
              ),
            ),

            Container(
                width: double.infinity,
                height: 10.h,
                padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(


                  child: Text(
                    'submit',
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
                    print(serviceController.text);
                    print(contactController.text);
                  },
                )),
            Container(
              width: double.infinity,
              height: 20.h,

              padding: EdgeInsets.fromLTRB(5.w, 5.w, 5.w, 5.w),
              //color: Colors.amber,
              alignment: Alignment.topCenter,

            ),
          ],
        ),
      ),
    );
  }
}