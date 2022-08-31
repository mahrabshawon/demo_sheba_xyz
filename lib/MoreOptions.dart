import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'myOrder.dart';

class moreOptions extends StatelessWidget {
  const moreOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Bismillah'),
        // ),
        body: Container(
          child: Container(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/landing page.png"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Container(
                    child: Column(
                      children: [
                        // Container(
                        //   child: CircleAvatar(
                        //     //border
                        //     radius: 31,
                        //     backgroundColor: Colors.brown,
                        //     child: CircleAvatar(
                        //       radius: 38,
                        //       backgroundImage:
                        //           AssetImage('assets/ac-image.png'),
                        //     ),
                        //   ), //
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 5),
                        //   child: Container(
                        //     child: Text(
                        //       "বঙ্গবন্ধু",
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.w800,
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 5, left: 50),
                        //   child: Container(
                        //     child: Row(
                        //       children: [
                        //         Container(
                        //           child: RichText(
                        //             textAlign: TextAlign.center,
                        //             text: TextSpan(
                        //               text: "from: ",
                        //               style: TextStyle(
                        //                 height: 1.171875,
                        //                 fontSize: 15,
                        //                 fontFamily: 'Montserrat',
                        //                 fontWeight: FontWeight.normal,
                        //                 color: Color(0xFF000000),
                        //               ),
                        //               children: [
                        //                 TextSpan(
                        //                   text: "Women In Digital ",
                        //                   style: TextStyle(
                        //                     height: 1.171875,
                        //                     fontSize: 15,
                        //                     fontFamily: 'Montserrat',
                        //                     fontWeight: FontWeight.bold,
                        //                     color: Colors.red,
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/acc-icon.png",
                      height: 23,
                      width: 27,
                    ),
                  ),
                  // leading: Icon(Icons.remove_red_eye_rounded),
                  title: Text('Your Profile'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myOrder(),
                      ),
                    )
                  },
                ),
                ListTile(
                  // leading: Icon(Icons.format_quote_sharp),
                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/Saved-Address.png",
                      height: 23,
                      width: 27,
                    ),
                  ),
                  title: Text('Saved Address'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myOrder(),
                      ),
                    )
                  },
                ),
                ListTile(
                  // leading: Icon(Icons.border_color),
                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/Service-Request.png",
                      height: 23,
                      width: 27,
                    ),
                  ),
                  title: Text('Service Request'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myOrder(),
                      ),
                    )
                  },
                ),
                ListTile(
                  // leading: Icon(Icons.photo_album),

                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/offers.png",
                      height: 23,
                      width: 27,
                    ),
                  ),
                  title: Text('Orders'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myOrder(),
                      ),
                    ),
                  },
                ),
                ListTile(
                  // leading: Icon(Icons.book),
                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/Promo-Codes.png",
                      height: 23,
                      width: 27,
                    ),
                  ),
                  title: Text('Promo Codes'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myOrder(),
                      ),
                    ),
                  },
                ),
                ListTile(
                  // leading: Icon(Icons.book),
                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/Refer.png",
                      height: 23,
                      width: 27,
                    ),
                  ),
                  title: Text('Refer & Get Discount'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myOrder(),
                      ),
                    ),
                  },
                ),
                ListTile(
                  // leading: Icon(Icons.collections_bookmark_rounded),
                  leading: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/offers.png",
                      height: 23,
                      width: 27,
                    ),
                  ),

                  title: Text('Offers'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const myOrder(),
                      ),
                    )
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

