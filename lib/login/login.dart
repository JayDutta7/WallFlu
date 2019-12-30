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
                style: TextStyle(color: Colors.white),
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  //fillColor: Colors.transparent,
                  labelText: 'Enter your email',
                  border: OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                autofocus: true,
                obscureText: true,//For passwordlike text
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  labelText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)
              ),
              RaisedButton(
                onPressed: () => clickToLogin(context),
                splashColor: Colors.blueAccent,
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.indigo,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Aleo'),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  void clickToLogin(BuildContext context){

  }
}
