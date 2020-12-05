import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('Saleha noor',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0
          ),),
        image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.blue,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.pinkAccent
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("FA17-BSE-073"),
          automaticallyImplyLeading: false
      ),
      body: new Center(
        child: new Text("Done",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),

      ),
    );
  }
}