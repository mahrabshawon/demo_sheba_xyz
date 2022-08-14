import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class campaing extends StatelessWidget {
  const campaing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body:Container(
        //   color: Color(0xFFFFB317),
        //   child: Card(
        //
        //   ),
        //
        // ),
        body: MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: 27.h,
      padding: new EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Color(0xFFFFB317),
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.room_service_rounded, size: 60),
              title: Text('Demo.xyz', style: TextStyle(fontSize: 30.0)),
              subtitle: Text('', style: TextStyle(fontSize: 18.0)),
            ),
            // ButtonBar(
            //   children: <Widget>[
            //     RaisedButton(
            //       child: const Text('Play'),
            //       onPressed: () {/* ... */},
            //     ),
            //     RaisedButton(
            //       child: const Text('Pause'),
            //       onPressed: () {/* ... */},
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    ));
  }

  MyCardWidget();
}
