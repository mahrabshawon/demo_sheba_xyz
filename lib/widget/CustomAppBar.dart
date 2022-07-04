import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String title;

  CustomAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontFamily: "InterR",
          color: Color(0xFFFFFFFF),
        ),
      ),
      backgroundColor: Color(0xFFFF5A5F),
    );
  }
}
