import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginDart(),
    );
  }
}

class LoginDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginDart> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.8),
            end: FractionalOffset(0.5, 0.5),
            // 10% of the width, so there are ten blinds.
            colors: [Colors.deepPurple[500], Colors.blueAccent[100]],
            // whitish to gray
            tileMode: TileMode.mirror, // repeats the gradient over the canvas
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(

                decoration: InputDecoration(filled: true,
                    fillColor: Colors.grey[500],labelText: 'Enter your username'),

              )
            ],
          ),
        ),
      ),
    );
  }
}
