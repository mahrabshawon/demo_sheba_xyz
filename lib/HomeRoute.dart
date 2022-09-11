// import 'package:demo_xyz/AllServicesRoute.dart';
import 'dart:ffi';

import 'package:demo_xyz/mapFinal.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'AllServiceRoute.dart';
import 'Model/Category.dart';
// import 'AllServicesRoute.dart';
import 'Widget/CustomAppBar.dart';
import 'Widget/Slider.dart';
import 'callOption.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  List<Category> categories = Category.categories;
  Color primary = Color(0xFFFFB317);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          alignment: Alignment.centerRight,
          child: const Icon(
            Icons.location_on,
            color: Color(0xFFFFB317),
            size: 30,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            print("tapped subtitle");
          },
          child: Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => mapGoogle()),
                  );
                },
                child: Text(
                  "Mohammadpur",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFB317),
                    fontFamily: "InterR",
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "H # 211, Road # 20, Mohamm...",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: "InterR",
                ),
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Search
              Container(
                width: MediaQuery.of(context).size.width,

                //height: 18.h,
                //color: Colors.amber,
                margin: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                //padding: EdgeInsets.all(8),
                child: TextField(
                  cursorColor: Color(0xFFFFB317),
                  //readOnly: true,
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFF9A9A9A), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFFFFB317), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter a search term',
                    prefixIcon:
                        Icon(Icons.search_sharp, color: Color(0xFFFFB317)),
                  ),
                ),
              ),
              //Banner Slider 1
              CustomizeSlider(images),
              //Categories
              Container(
                // height: 42.h,

                width: width,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                decoration: BoxDecoration(
                  //color: Colors.red,
                  border: Border.all(color: const Color(0xFF9A9A9A)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(

                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Wrap(
                      spacing: 23.0,
                      runSpacing: 30,

                      children: [
                        _singleCategory(

                            categories[0].image, categories[0].title, 0,

                        ),
                        _singleCategory(
                            categories[1].image, categories[1].title, 1),
                        _singleCategory(
                            categories[2].image, categories[2].title, 2),
                        _singleCategory(
                            categories[3].image, categories[3].title, 3),
                        _singleCategory(
                            categories[4].image, categories[4].title, 4),
                        _singleCategory(
                            categories[5].image, categories[5].title, 5),
                        _singleCategory(
                            categories[6].image, categories[6].title, 6),
                        _singleCategory(
                            categories[7].image, categories[7].title, 7),
                      ],

                    ),
                    // Wrap(
                    //
                    //   children: [
                    //
                    //     _singleCategory(
                    //         categories[5].image, categories[5].title, 5),
                    //     _singleCategory(
                    //         categories[6].image, categories[6].title, 6),
                    //     _singleCategory(
                    //         categories[7].image, categories[7].title, 7),
                    //   ],
                    //
                    // ),
                    const Divider(
                      thickness: 1, // thickness of the line
                      indent: 20, // empty space to the leading edge of divider.
                      endIndent:
                          20, // empty space to the trailing edge of the divider.
                      color: Color(
                          0xFF9A9A9A), // The color to use when painting the line.
                      height:11, // The divider's height extent.
                    ),
                    InkWell(
                      child: Container(
                        height: 6.h,
                        width: width,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   color: Colors.amber,
                        // ),
                        child: Column(
                          children: [
                            Text(
                              "More Categories",
                              style: TextStyle(
                                color: Colors.black,
                                // color: Colors.black,
                                fontSize: 1.7.h,
                              ),
                            ),
                            Image.asset(
                              'assets/down.png',
                              color: primary,
                            )
                          ],
                        ),
                      ),
                      onTap: () => {
                        _moreCategoriesModal(context),
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.w),
              //Slide banner 2
              CustomizeSlider(banner2),
              //Trending
              Container(
                width: width,
                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                // decoration: BoxDecoration(
                //   color: Colors.grey,
                // ),
                child: Column(
                  children: [
                    //Trending & see all
                    Container(
                      //margin: EdgeInsets.fromLTRB(12, 15, 12, 0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Container(
                              child: Text(
                                "Trending",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 5.3.w,
                                  fontFamily: "InterS",
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              child: Text(
                                "See all",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 4.w,
                                  fontFamily: "InterR",
                                  color: primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    //1st row image and text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: const AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame9.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              // decoration: BoxDecoration(color: Colors.amber),
                              child: Text(
                                "AC Services",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame10.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              // color: Colors.amber,
                              child: Text(
                                "Painting & Renovation",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    //2nd row image and text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: const AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame11.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              child: Text(
                                "Car Services",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame12.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              child: Text(
                                "Cleaning & Pest",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

              //Recommended
              Container(
                width: width,
                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                // decoration: BoxDecoration(
                //   color: Colors.grey,
                // ),
                child: Column(
                  children: [
                    //Recommended & see all
                    Container(
                      //margin: EdgeInsets.fromLTRB(10, 8, 10, 8),
                      // padding: const EdgeInsets.symmetric(
                      //     horizontal: 8, vertical: 8),
                      //padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:9),
                            child: Container(
                              child: Text(
                                "Recommended",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 5.3.w,
                                  fontFamily: "InterS",
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: Container(
                              child: Text(
                                "See all",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 4.w,
                                  fontFamily: "InterR",
                                  color: primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    //1st row image and text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: const AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame9.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              // decoration: BoxDecoration(color: Colors.amber),
                              child: Text(
                                "AC Services",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame10.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              // color: Colors.amber,
                              child: Text(
                                "Painting & Renovation",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    //2nd row image and text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: const AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame11.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              child: Text(
                                "Car Services",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 17.h,
                              width: width / 2 - 3.h,
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image(
                                  image: AssetImage('assets/Frame12.png'),
                                  fit: BoxFit.fill, // use this
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: width / 2 - 3.h,
                              child: Text(
                                "Cleaning & Pest",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 3.5.w,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //Banner 1
              Container(
                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                // height: 15.h,
                width: width,

                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.all(Radius.circular(1.0)),
                //
                //   // color: Colors.redAccent,
                // ),
                  child: Image.asset('assets/basic.png',),

                // child: _customBanner(
                //     "Basic\nServices", "40% Off\n", "Start from \$999."),
              ),
              //Banner 2
              Container(
                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                  // height: 15.h,
                  width: width,
                  child: Image.asset('assets/master.png'),
                  // child: _customBanner(
                  //     "Master\nServices", "50% Off\n", "Start from \$1799."),
              ),
              //Banner 3
              Container(

                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                  // height: 15.h,
                  width: width,
                child: Image.asset('assets/premium.png'),
                  // child: _customBanner(
                  //     "Premium\nServices", "60% Off\n", "Start from \$2599."),
              ),

              //Ask me banner
              Container(
                //height: 15.h,
                width: width,
                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),

                child:
                    Stack(alignment: Alignment.bottomLeft, children: <Widget>[
                  Image(
                    image: AssetImage('assets/call.png'),
                  ),
                  Column(
                    children: [
                      Container(
                        //padding: EdgeInsets.all(3.h),
                        padding: EdgeInsets.fromLTRB(3.h, 0, 0, 0),
                        child: Text(
                          'Ask Me!',
                          style: TextStyle(
                            fontSize: 5.h,
                            fontWeight: FontWeight.bold,
                            fontFamily: "InterM",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(3.h),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: primary,
                            // minimumSize: Size(88, 36),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            // shape: ElevatedButton.styleFrom(
                            //   primary: ThemeColors.darkBg,
                            //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.black)),
                            // ),
                          ),
                          child: Text(
                            'Call ME',
                            style: TextStyle(
                              fontSize: 5.w,
                              fontFamily: "InterM",
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  // builder: (context) => AllServiceRoute(0)),
                                builder: (context) => callOptions()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              //All service Button
              Container(
                width: width,
                padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primary,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    //padding: EdgeInsets.symmetric(horizontal: 16),
                    // shape: ElevatedButton.styleFrom(
                    //   primary: ThemeColors.darkBg,
                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.black)),
                    // ),
                  ),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Color(0xFFFFB317),
                  //   // background
                  // ),
                  child: Text(
                    'Order Now',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //subCategories[index].serID
                        builder: (context) => AllServiceRoute(0),
                      ),
                    );
                  },
                ),
              ),
              Container(
                  //height: 15.h,
                  height: 10.h,
                  width: width,
                  padding: EdgeInsets.fromLTRB(2.5.w, 1.5.h, 2.5.w, 1.5.h),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primary,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      //padding: EdgeInsets.symmetric(horizontal: 16),
                      // shape: ElevatedButton.styleFrom(
                      //   primary: ThemeColors.darkBg,
                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.black)),
                      // ),
                    ),

                    child: Text(
                      'All Services',
                      style: TextStyle(
                        fontSize: 5.w,
                        fontWeight: FontWeight.bold,
                        fontFamily: "InterM",
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllServiceRoute(0)),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customBanner(String serviceType, String discount, String price) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(2.5.w, 1.h, 2.5.w, 1.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF07D765),
            primary,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Text(
                serviceType,
                style: TextStyle(
                  fontSize: 3.8.h,
                  fontFamily: "InterBL",
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: RichText(
                text: TextSpan(
                  text: discount,
                  style: TextStyle(
                    fontSize: 3.3.h,
                    fontFamily: "InterBL",
                    color: Color(0xFFFFFFFF),
                  ),
                  children: [
                    TextSpan(
                      text: price,
                      style: TextStyle(
                        fontSize: 2.3.h,
                        fontFamily: "InterM",
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _singleCategory(String image, String title, int clickedIndex) {
    return Container(
      width: 10.h,
      height: 11.h,
      padding: EdgeInsets.fromLTRB(1.w, 2.w, 1.w, 1.w),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AllServiceRoute(clickedIndex)),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              // decoration: BoxDecoration(
              //   color: Color(0xFF32C7CC),
              //   color: Colors.orange),
              // ),
              child: Wrap(
                children: [
                  Container(
                    //color: Colors.black,
                    alignment: Alignment.bottomCenter,
                    //padding: EdgeInsets.fromLTRB(1.w, 1.w, 1.w, 1.w),
                    child: Image.asset(
                      image,
                      color: Color(0xFFFFB317),
                      height: 4.h,
                      width: 4.h,
                    ),
                  ),

                  //const SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.fromLTRB(1.w, 1.w, 1.w, 1.w),
                    //color: Colors.grey,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        // color: Colors.black,
                        fontSize: 1.5.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _moreCategoriesModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.80,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: InkWell(
                    child: Image.asset('assets/close-small.png'),
                    onTap: () => {Navigator.of(context).pop()}),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  "All Categories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                //margin: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                //padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _singleCategory(
                            categories[0].image, categories[0].title, 0),
                        _singleCategory(
                            categories[1].image, categories[1].title, 1),
                        _singleCategory(
                            categories[2].image, categories[2].title, 2),
                        _singleCategory(
                            categories[3].image, categories[3].title, 3),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _singleCategory(
                            categories[4].image, categories[4].title, 4),
                        _singleCategory(
                            categories[5].image, categories[5].title, 5),
                        _singleCategory(
                            categories[6].image, categories[6].title, 6),
                        _singleCategory(
                            categories[7].image, categories[7].title, 7),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        );
        // return your layout
      },
    );
  }

  List<String> images = [
    "assets/interior-paint-banner.png",
    "assets/interior-paint-banner.png",
    "assets/interior-paint-banner.png",
    "assets/interior-paint-banner.png",
    "assets/interior-paint-banner.png",
    "assets/interior-paint-banner.png",
    "assets/interior-paint-banner.png",
  ];
  List<String> banner2 = [
    "assets/bestdeal.png",
    "assets/bestdeal.png",
    "assets/bestdeal.png",
    "assets/bestdeal.png",
    "assets/bestdeal.png",
    "assets/bestdeal.png",
    "assets/bestdeal.png",
  ];
}



