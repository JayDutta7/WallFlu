import 'package:flutter/material.dart';
import 'package:wallflu/login/login.dart';
import 'package:wallflu/registration/registration.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AfterSplashDart(),
        routes: <String, WidgetBuilder>{
          '/Login': (BuildContext context) => Login(),
        }
        );
  }
}

class AfterSplashDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _afterSpalsh();
}

class _afterSpalsh extends State<AfterSplashDart> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        //Background Image
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/mountain.jpg"),
                colorFilter: new ColorFilter.mode(Colors.blue[500].withOpacity(0.2), BlendMode.overlay),
                fit: BoxFit.cover)
        ),
        //Buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0)),

            Expanded(
              child: Center(
                  child: Text(
                'WallFlutteR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Aleo'),
              )),
            ),

            RaisedButton(
              onPressed: () => clickToLogin(context),
              splashColor: Colors.blueAccent,
              textColor: Colors.black,
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Padding(
                  padding: EdgeInsets.only(left:30.0,right:30.0,top:10.0,bottom:10.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.indigo,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Aleo'),
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            ),
            OutlineButton(
              onPressed: () => clickToRegis(context),
              splashColor: Colors.white,
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Padding(
               padding: EdgeInsets.only(left:30.0,right:30.0,top:10.0,bottom:10.0),
                child: Text(
                  'Registration',
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Aleo'),
                ),
              ),
            ),
            Container(
              margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            ),
          ],
        ),
        //Name
      ),
    );
  }
}

void clickToLogin(BuildContext context) {
  // Navigator.pushNamed(context, 'Login');
  /*Navigator.push(context, MaterialPageRoute(builder: (context) => return Login()))
      .then((Object result) {
    print("result from addpage ${result.toString()}");
  });*/
  Navigator.of(context).pushNamed('/Login');
}

void clickToRegis(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()))
      .then((Object result) {
    print("result from addpage ${result.toString()}");
  });

}
