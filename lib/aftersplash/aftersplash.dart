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
        });
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
                image: AssetImage("images/aftrsplshbckgrnd.png"),
                fit: BoxFit.cover)),
        //Buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0)),
            Expanded(
              child: Center(
                  child: Text(
                'WallFlutteR',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Aleo'),
              )),
            ),
            RaisedButton(
              onPressed: () => clickToLogin(context),
              splashColor: Colors.redAccent,
              textColor: Colors.black,
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Aleo'),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () => clickToRegis(context),
              splashColor: Colors.white,
              textColor: Colors.black,
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
               padding: EdgeInsets.all(10.0),
                child: Text(
                  'Registration',
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Aleo'),
                ),
              ),
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
  /*Navigator.push(context, MaterialPageRoute(builder: (context) => Login()))
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
