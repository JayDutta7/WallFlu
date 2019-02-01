
import 'package:flutter/material.dart';

class SimpleRoundButton extends StatelessWidget{

  final Color splashColor;//Click spalsh color
  final Text buttonText;//button text
  final Color textColor;//text color
  final Color backColor;//background color
  final void onPressed;//onpressed


  //Constructor
  SimpleRoundButton(
      this.backColor,
      this.splashColor,
      this.buttonText,
      this.textColor,
      this.onPressed);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(

              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
              ),
              splashColor: splashColor,
              textColor: textColor,
              color: backColor,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20.0),
                child: buttonText,
                )
                ],
               ),
              onPressed:()=> onPressed,
            ),
          ),
          Column(

          )
        ],
      ),
    );
  }

}