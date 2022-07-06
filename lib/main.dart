import 'package:demo_xyz/HomeRoute.dart';
import 'package:demo_xyz/Model/Category.dart';
import 'package:demo_xyz/MaterialColor.dart';
import 'package:demo_xyz/Widget/CustomAppBar.dart';
import 'package:demo_xyz/Widget/Slider.dart';
import 'package:demo_xyz/splashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'ServicesDetailsRoute.dart';
// import 'Widget/CustomBottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title = "Demo.xyz";
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: buildMaterialColor(Color(0xFFFF5A5F)),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class DemoXyz extends StatefulWidget {
  DemoXyz({Key? key}) : super(key: key);

  @override
  State<DemoXyz> createState() => _DemoXyzState();
}

class _DemoXyzState extends State<DemoXyz> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF9A9A9A),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          backgroundColor: const Color(0xFFFF5A5F),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              label: "Inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_center_outlined),
              label: "Help",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More",
            )
          ],
        ),
      ),
    );
  }
}
