import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'inboxNotification.dart';
import 'inboxcampaing.dart';

void main() => runApp(inbox());

class inbox extends StatelessWidget {
  const inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFFB317),
            title: Text('Inbox'),
            bottom: TabBar(
              tabs: [Tab(text: "Campaing"), Tab(text: "Notification")],
            ),
          ),
          body: TabBarView(
            children: [
              campaing(),
              notification(),
            ],
          ),
        ),
      ),
    );
  }
}
