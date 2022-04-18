import 'package:flutter/material.dart';

import 'components/slidebottombar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: const Text('Card Visite', style: TextStyle(color:Colors.black54),)),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: SingleChildScrollView(child: Stack(children: [Welcome()]))),
        bottomNavigationBar: DenemeSayfa(),
      ),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}
