import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/aftrsplshbckgrnd.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('Future of Wallpaper Application',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w800,
                fontFamily: 'Aleo'
            ),
            ),
            //centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {

                }
                ),
          ),
        ),
      ),
    );
  }
}
