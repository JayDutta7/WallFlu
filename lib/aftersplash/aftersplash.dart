import 'package:flutter/material.dart';
import 'package:wallflu/utility/SimpleRoundButton.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/aftrsplshbckgrnd.png"),
                    fit: BoxFit.cover)),

            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SimpleRoundButton(
                    Colors.white12,
                    Colors.blue,
                    Text('Login'),
                    Colors.deepPurple,
                      click()
                  ),
                  SimpleRoundButton(
                      Colors.white12,
                      Colors.orangeAccent,
                      Text('Registration'),
                      Colors.red,
                      click()
                  )

                ],
              ),



            ),

          ),
        ),
      ),
    );
  }
  void click(){

  }
}
