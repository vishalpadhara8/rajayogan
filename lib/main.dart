library bottom_navy_bar;

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'demo1/main.dart';
import 'demo2/demo2.dart';
import 'demo3/demo3.dart';
import 'demo4/demo4.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter App',
      theme: new ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.greenAccent[50] : null
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Vishal Padhara"),
              accountEmail: new Text("vishalpadhara@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.deepOrange : Colors.greenAccent,
                child: new Text("P"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("V"),
                )
              ],
            ),

            new ListTile(
              title: new Text(" (1) Demo 1"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo1()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (2) Demo 2"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo2()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
              },
            ),

            new ListTile(
              title: new Text(" (3) Demo 3"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo3()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
              },
            ),

            new ListTile(
              title: new Text(" (4) Demo 4"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo4()));
//                new TextChanges();
//                Navigator.of(context).pushNamed("/b");
              },
            ),






           /*
            new ListTile(
              title: new Text(" (18)  onbording Screen 1  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SplashScreen1()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text(" (19) Sliver App Bar  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SilvarAppBar()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text(" (20) SIgneture Demo    "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SignHomePage()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (21) Age Calculator    "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new AgeHomePage()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),

            new ListTile(
              title: new Text(" (22) camera example not working     "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HttpJson()));

//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new CameraExampleHome()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),


            new ListTile(
              title: new Text(" (22) Login page with validation  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new loginvalidation()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),


            new ListTile(
              title: new Text(" (22) Camera  "),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();

//                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new CameraApp()));
//                Navigator.of(context).pushNamed("/a");
              },
            ),  */

            new Divider(color: Colors.black38,),
            new ListTile(
              title: new Text("close"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            )
          ],
        ),
      ),
//      body: new Container(
//        child: new Center(
//          child: new Text("Home Page"),
//        ),
//        body: BottomBarHome(),


//      body: BottomNavBar(),


//        constraints: BottomNavyBar(),
//      ),
    );
  }
}
