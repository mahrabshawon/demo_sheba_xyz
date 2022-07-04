// import 'package:demo_xyz/ServicesDetailsRoute.dart';
import 'package:flutter/material.dart';

import 'Model/Category.dart';
import 'ServiceDetailsRoute.dart';
import 'Widget/CustomAppBar.dart';
import 'Widget/Slider.dart';

void main() {
  runApp(const HomeRoute());
}

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  List<Category> categories = Category.categories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar("HomeRoute"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Address
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xFFFF5A5F),
                      size: 40,
                    ),
                    const SizedBox(width: 5),
                    RichText(
                      text: TextSpan(
                          text: "Mohammedpur\n",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFFF5A5F),
                            fontFamily: "InterR",
                          ),
                          children: [
                            TextSpan(
                              text: "H # 211, Road # 20, Mohamm...",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(width: 50),
                    const Icon(
                      Icons.expand_circle_down_rounded,
                      color: Color(0xFFE5E5E5),
                      size: 24,
                    ),
                  ],
                ),
              ),
              //Search
              Container(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    readOnly: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFF9A9A9A), width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFFFF5A5F), width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter a search term',
                      prefixIcon: Icon(Icons.search_sharp),
                    ),
                  ),
                ),
              ),
              //Banner Slider 1
              CustomizeSlider(images),
              //Categories
              Container(
                margin: EdgeInsets.fromLTRB(12, 20, 12, 12),
                padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF9A9A9A)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleCategory(
                            categories[0].image, categories[0].title),
                        SingleCategory(
                            categories[1].image, categories[1].title),
                        SingleCategory(
                            categories[2].image, categories[2].title),
                        SingleCategory(
                            categories[3].image, categories[3].title),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleCategory(
                            categories[4].image, categories[4].title),
                        SingleCategory(
                            categories[5].image, categories[5].title),
                        SingleCategory(
                            categories[6].image, categories[6].title),
                        SingleCategory(
                            categories[7].image, categories[7].title),
                      ],
                    ),
                    SizedBox(height: 12),
                    const Divider(
                      thickness: 1, // thickness of the line
                      indent: 20, // empty space to the leading edge of divider.
                      endIndent:
                      20, // empty space to the trailing edge of the divider.
                      color: Color(
                          0xFF9A9A9A), // The color to use when painting the line.
                      height: 20, // The divider's height extent.
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "More Categories",
                              style: TextStyle(
                                color: Color(0xFF9A9A9A),
                                fontSize: 20,
                              ),
                            ),
                            Image.asset('assets/down.png')
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
              SizedBox(height: 10),
              //Slide banner 2
              CustomizeSlider(banner2),
              //Trending
              Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Trending",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "InterS",
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "InterR",
                              color: Color(0xFFFF5A5F),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 9.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "AC Services",
                                style: TextStyle(
                                  fontSize: 14,
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
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 10.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "Painting & Renovation",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 11.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "Car Services",
                                style: TextStyle(
                                  fontSize: 14,
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
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 12.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "Cleanning & Pest",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Recommended
              Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "InterS",
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "InterR",
                              color: Color(0xFFFF5A5F),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 9.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "AC Services",
                                style: TextStyle(
                                  fontSize: 14,
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
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 10.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "Painting & Renovation",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 11.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "Car Services",
                                style: TextStyle(
                                  fontSize: 14,
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
                              height: 104.0,
                              width: 180.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Frame 12.png'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text(
                                "Cleanning & Pest",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "InterR",
                                  color: Color(0xFF3C3C3C),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Banner 1
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 5, right: 5, bottom: 10),
                child: Container(
                  height: 72.0,
                  width: 388.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFFF5A5F),
                        Color(0xFF087E8B),
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Basic\nServices",
                            style: TextStyle(
                              fontSize: 30,
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
                              text: "40% Off\n",
                              style: TextStyle(
                                fontSize: 36,
                                fontFamily: "InterBL",
                                color: Color(0xFFFFFFFF),
                              ),
                              children: [
                                TextSpan(
                                  text: "Start from 999 Tk.",
                                  style: TextStyle(
                                    fontSize: 17,
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
                ),
              ),
              //Banner 2
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 5, right: 5, bottom: 10),
                child: Container(
                  height: 72.0,
                  width: 388.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFFF5A5F),
                        Color(0xFF087E8B),
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Master\nServices",
                            style: TextStyle(
                              fontSize: 30,
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
                              text: "50% Off\n",
                              style: TextStyle(
                                fontSize: 36,
                                fontFamily: "InterBL",
                                color: Color(0xFFFFFFFF),
                              ),
                              children: [
                                TextSpan(
                                  text: "Start from 1799 Tk.",
                                  style: TextStyle(
                                    fontSize: 17,
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
                ),
              ),
              //Banner 3
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 5, right: 5, bottom: 10),
                child: Container(
                  height: 72.0,
                  width: 388.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFFF5A5F),
                        Color(0xFF087E8B),
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Premium\nServices",
                            style: TextStyle(
                              fontSize: 30,
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
                              text: "60% Off\n",
                              style: TextStyle(
                                fontSize: 36,
                                fontFamily: "InterBL",
                                color: Color(0xFFFFFFFF),
                              ),
                              children: [
                                TextSpan(
                                  text: "Start from 2599 Tk.",
                                  style: TextStyle(
                                    fontSize: 17,
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
                ),
              ),
              //All service Button
              Container(
                  margin: EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey[300],
                      primary: Color(0xFFFF5A5F),
                      minimumSize: Size(88, 36),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      // shape: ElevatedButton.styleFrom(
                      //   primary: ThemeColors.darkBg,
                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.black)),
                      // ),
                    ),
                    child: Text('All Services'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServicesDetailsRoute()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget SingleCategory(String image, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFFFF5A5F),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.asset(image),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
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
                margin: const EdgeInsets.fromLTRB(12, 20, 12, 12),
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleCategory(
                            categories[0].image, categories[0].title),
                        SingleCategory(
                            categories[1].image, categories[1].title),
                        SingleCategory(
                            categories[2].image, categories[2].title),
                        SingleCategory(
                            categories[3].image, categories[3].title),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleCategory(
                            categories[4].image, categories[4].title),
                        SingleCategory(
                            categories[5].image, categories[5].title),
                        SingleCategory(
                            categories[6].image, categories[6].title),
                        SingleCategory(
                            categories[7].image, categories[7].title),
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
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
  ];
  List<String> banner2 = [
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
  ];
}
