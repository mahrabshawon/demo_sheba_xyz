import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidebar ui',
      home: Scaffold(
        body: test(),
      ),
    );
  }
}

class test extends StatefulWidget {
  int checkedIndex = 0;

  List cardNames = [
    'Sports',
    'Wild Life',
    'Night',
    'LandSpace',
  ];
  test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.cardNames.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCard(index);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
      ),
    );
  }

  Widget buildCard(int index) {
    bool checked = index == widget.checkedIndex;
    String name = widget.cardNames[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.checkedIndex = index;
        });
      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              color: checked ? Colors.orange : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                child: Center(child: Text(name)),
              ),
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Offstage(
              offstage: !checked,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}