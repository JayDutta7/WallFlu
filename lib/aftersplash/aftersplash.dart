import 'package:flutter/material.dart';
import 'package:wallflu/utility/SimpleRoundButton.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      //debugShowCheckedModeBanner: false,
      body: _Home(),
    );
  }

  void click() {}

  Widget _Home() {
    Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/aftrsplshbckgrnd.png"),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SimpleRoundButton(Colors.white70, Colors.redAccent,'Login',
                    Colors.white, click()),
                SimpleRoundButton(Colors.redAccent, Colors.white, 'Registration',
                    Colors.white, click())
              ],
            ),
          ),
        ),
      ],
    );
  }
}
