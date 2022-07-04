// import 'package:demo_xyz/ServicesDetailsRoute.dart';
import 'package:demo_xyz/main.dart';
import 'package:flutter/material.dart';

import '../ServiceDetailsRoute.dart';

class CustomBottomNavBar extends StatefulWidget {
  int _selectedIndex;
  CustomBottomNavBar(this._selectedIndex, {Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MyApp(),
    ServicesDetailsRoute(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.amber,
      currentIndex: widget._selectedIndex,
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
    );
  }
}

// class CustomBottomNavBar extends StatefulWidget {
//   int _selectedIndex;
//   CustomBottomNavBar(this._selectedIndex, {Key? key}) : super(key: key);
//
//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }
//
// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     MyApp(),
//     ServicesDetailsRoute(),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       widget._selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return NavigationBar(
//       height: 60,
//       backgroundColor: Color(0xFFFF5A5F),
//       destinations: [
//         NavigationDestination(
//           icon: Icon(Icons.home),
//           label: "Home",
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.inbox),
//           label: "Inbox",
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.add),
//           label: "Order",
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.help_center_outlined),
//           label: "Help",
//         ),
//         NavigationDestination(
//           icon: Icon(Icons.menu),
//           label: "More",
//         ),
//       ],
//     );
//   }
// }

// return NavigationBarTheme(
//   data: NavigationBarThemeData(
//     iconTheme: MaterialStateProperty.all(
//       IconThemeData(
//         color: Color(0xFFFFFFFF),
//         size: 20,
//       ),
//     ),
//     indicatorColor: Color(0xFFD9D9D9),
//     labelTextStyle: MaterialStateProperty.all(
//       TextStyle(
//           fontSize: 12,
//           fontFamily: "InterR",
//           fontWeight: FontWeight.normal,
//           color: Color(0xFFFFFFFF)),
//     ),
// ),
// child: NavigationBar(
//     height: 60,
//     backgroundColor: Color(0xFFFF5A5F),
//     destinations: [
//       NavigationDestination(
//         icon: Icon(Icons.home),
//         label: "Home",
//       ),
//       NavigationDestination(
//         icon: Icon(Icons.inbox),
//         label: "Inbox",
//       ),
//       NavigationDestination(
//         icon: Icon(Icons.add),
//         label: "Order",
//       ),
//       NavigationDestination(
//         icon: Icon(Icons.help_center_outlined),
//         label: "Help",
//       ),
//       NavigationDestination(
//         icon: Icon(Icons.menu),
//         label: "More",
//       ),
//     ],
//   ),
// );

// class NavBar extends StatefulWidget {
//   const NavBar({Key? key}) : super(key: key);
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   int _page = 0;
//   late PageController pageController;
//
//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     pageController.dispose();
//   }
//
//   void navigationTapped(int page) {
//     pageController.jumpToPage(page);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: homeScreenItems,
//       ),
//       bottomNavigationBar: CupertinoTabBar(
//         height: 60,
//         backgroundColor: Color(0xFFFF5A5F),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               color: _page == 0 ? Colors.white : Colors.black,
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.inbox),
//             label: "Inbox",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add),
//             label: "Order",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.help_center_outlined),
//             label: "Help",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: "More",
//           ),
//         ],
//         onTap: navigationTapped,
//         // destinations: [
//         //
//         // ],
//       ),
//     );
//   }
// }
