import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallflu/aftersplash/aftersplash.dart';

void main() => runApp(WallPaperApp());

class WallPaperApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(), //title: 'Flutter Demo Home Page'
      routes: <String, WidgetBuilder>{
        '/AfterSplash': (BuildContext context) => AfterSplash() //SecondScreen
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black26,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/mountain.jpg"), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: Text(
                'WallFlutteR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 30.0, fontFamily: 'Aleo'),
              )),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime(); //Calling the async after 2 seconds
  }

  void moveToNextPage() {
    Navigator.of(context).pushReplacementNamed(
        '/AfterSplash'); //SecondScreen//Stack cleared user cannot return to splash
  }

  startTime() async {
    return Timer(Duration(seconds: 4), moveToNextPage);
  }
}
