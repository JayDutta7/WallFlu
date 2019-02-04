
import 'package:flutter/material.dart';

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginDart(),


    );
  }

}

class LoginDart extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_LoginState();

}

class _LoginState extends State<LoginDart>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
      title:Text(
        'Login',
        ),
      centerTitle: true, //For Appbar center text
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
    );
  }

}