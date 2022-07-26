import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Example")),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget() : super();

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currTab = 0;
  ScrollController _scrollController = ScrollController();
  List<String> items = <String>[
    "Overview",
    "Details",
    "Service Request",
    "FAQ",
    "Why Choose us",
    "Reviews"
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        //print("offset = ${_scrollController.offset}");
        currTab = (_scrollController.offset) ~/ (150);
        print(currTab);
        setState(() {});
      });
  }

  @override
  void dispose() {
    _scrollController
        .dispose(); // it is a good practice to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              for (int i = 0; i < items.length; i++)
                InkWell(
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.all(8),
                      decoration: new BoxDecoration(
                          color: i == currTab ? Colors.amber : Colors.blue,
                          borderRadius:
                          new BorderRadius.all(Radius.circular(15.0))),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Expanded(
                          child: Text(
                            items[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "InterM",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (i == 0) {
                          _scrollController.jumpTo(i * (150).toDouble());
                        } else if (i == 1) {
                          _scrollController.jumpTo(i * (150).toDouble());
                        } else if (i == 2) {
                          _scrollController.jumpTo(i * (150).toDouble());
                        } else if (i == 3) {
                          _scrollController.jumpTo(i * (150).toDouble());
                        } else if (i == 4) {
                          _scrollController.jumpTo(i * (150).toDouble());
                        } else if (i == 5) {
                          _scrollController.jumpTo(i * (150).toDouble());
                        }
                      });
                    }),
            ],
          ),
        ),
        Expanded(
            child: ListView(
              controller: _scrollController,
              children: <Widget>[
                Container(
                  height: 150,
                  color: Colors.red,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Image.asset('assets/Frame4.png'),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  color: Colors.red,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/Frame4.png'),
                ),
                Container(
                  height: 150,
                  color: Colors.red,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/Frame4.png'),
                ),
                Container(
                  height: 150,
                  color: Colors.red,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/Frame4.png'),
                ),
                Container(
                  height: 150,
                  color: Colors.red,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/Frame4.png'),
                ),
                Container(
                  height: 150,
                  color: Colors.red,
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/Frame4.png'),
                ),
                // for (int i = 0; i < 100; i++)
                //   Container(
                //       color: Colors.deepPurple,
                //       height: 30,
                //       child: Text("Content at 1 -" + i.toString())),
                // for (int i = 0; i < 100; i++)
                //   Container(
                //       color: Colors.green,
                //       height: 30,
                //       child: Text("Content at 2 -" + i.toString())),
                // for (int i = 0; i < 100; i++)
                //   Container(
                //       color: Colors.pink,
                //       height: 30,
                //       child: Text("Content at 3 -" + i.toString())),
                // for (int i = 0; i < 100; i++)
                //   Container(
                //       color: Colors.grey,
                //       height: 30,
                //       child: Text("Content at 4 -" + i.toString())),
              ],
            )),
      ],
    );
  }
}