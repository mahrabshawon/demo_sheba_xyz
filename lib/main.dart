import 'package:demo_xyz/HomeRoute.dart';
import 'package:demo_xyz/Model/Category.dart';
import 'package:demo_xyz/MaterialColor.dart';
import 'package:demo_xyz/Widget/CustomAppBar.dart';
import 'package:demo_xyz/Widget/Slider.dart';
import 'package:demo_xyz/serviceReq.dart';
import 'package:demo_xyz/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'MoreOptions.dart';
import 'help.dart';
import 'inbox.dart';
import 'myOrder.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title = "Demo.xyz";
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: buildMaterialColor(Color(0xFF6AF0FF)),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static Color primary = Color(0xFFFFB317);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeRoute(),
    inbox(),
    myOrder(),
    help(),
    moreOptions(),
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
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          backgroundColor: primary,
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
