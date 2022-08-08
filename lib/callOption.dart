import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const callOption());

class callOption extends StatelessWidget {
  const callOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Option',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: callOptions(),
    );
  }
}

class callOptions extends StatefulWidget {
  const callOptions({Key? key}) : super(key: key);

  @override
  State<callOptions> createState() => _callOptionsState();
}

class _callOptionsState extends State<callOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Options'),
        backgroundColor: Color(0xFFFF9900),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.call,
                  color: Colors.black,
                  size: 24.0,
                ),
                onPressed: () {
                  launch('tel:');
                  // +880 01613027296
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFFFF9900),),
              ),
                label: Text('Make A Call'),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.message,
                color: Colors.black,
                size: 24.0,
              ),
              onPressed: () {
                launch('sms:+880 01613027296?bodyHi Wellcome to Demo.xyz');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFFF9900),),
              ),
              label: Text('Send a SMS'),
            ),
            SizedBox(
              height: 19,
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.mail,
                color: Colors.black,
                size: 24.0,
              ),
              onPressed: () {
                launch('mailto:');
                // shawon.womenindigital@gmail.com?subject=This is Subject Title&body=This is Body of Email
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFFF9900),),
              ),
              label: Text('Send A Email'),
            ),
          ],
        ),
      ),
    );
  }
}
