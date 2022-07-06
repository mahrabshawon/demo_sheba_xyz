import 'package:flutter/material.dart';

void main() => runApp(const signUp());

class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

  static const String _title = 'Demo.xyz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
          backgroundColor: Colors.redAccent,),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Adress',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     //forgot password screen
            //   },
            //   child: const Text('Forgot Password',),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Container(

                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Submit Data'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )
              ),
            ),
            // Row(
            //   children: <Widget>[
            //     const Text('Does not have account?'),
            //     TextButton(
            //       child: const Text(
            //         'Sign Up',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //       onPressed: () {
            //         //signup screen
            //       },
            //     )
            //   ],
            //   mainAxisAlignment: MainAxisAlignment.center,
            // ),
          ],
        ));
  }
}