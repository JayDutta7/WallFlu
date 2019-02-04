
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
        maxLines: 1,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Aleo'),
      ),
    ),
    );
  }

}