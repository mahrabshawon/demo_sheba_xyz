import 'package:flutter/material.dart';

class orderPage extends StatelessWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Ac Basic Service')),
        body: Column(
          children: const <Widget>[
            ElevatedCardExample(),
            FilledCardExample(),
            OutlinedCardExample(),
          ],
        ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 1,
        child: SizedBox(
          width: 331,
          height: 100,
          child: Padding(
            padding: EdgeInsets.only(left: 3, top: 3),
            child: Text(
              '1-1.5 Ton\n \n \n 399৳/unit',
            ),
          ),
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 1,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 331,
          height: 100,
          child: Padding(
            padding: EdgeInsets.only(left: 3, top: 3),
            child: Text('2-3 Ton\n \n \n 599৳/unit'),
          ),
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: const SizedBox(
            width: 331,
            height: 100,
            child: Padding(
              padding: EdgeInsets.only(left: 3, top: 3),
              child: Text(
                '4-5 Ton \n \n \n 899৳/unit',
                style: TextStyle(

                  // decoration: TextDecoration.underline,
                  // decorationStyle: TextDecorationStyle.dashed,

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}