import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meetup/design_one/designpart.dart';
import 'package:meetup/design_one/designpart_three.dart';
import 'package:meetup/design_one/designpart_two.dart';
import 'package:meetup/model/user.dart';
import 'package:meetup/screens/chatscreens/chatmain.dart';
import 'package:meetup/screens/ecommerceweb/dashboard.dart';
import 'package:meetup/screens/home/home.dart';
import 'package:meetup/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final RxSharedPreferences prefs = RxSharedPreferences(SharedPreferences.getInstance());

//  SharedPreferences _preferences = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {


return MaterialApp(
  home: DesignPart_Two(),
  debugShowCheckedModeBanner: false,
  themeMode: ThemeMode.system,
  theme: ThemeData(
splashColor: Colors.transparent,
  ),
);
//    return StreamProvider<User>.value(
//      value: AuthService().users,
//      child: MaterialApp(
//        home: DesignPart_Two(),
//        debugShowCheckedModeBanner: false,
//      ),
//    );
  }
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashActivityState();
  }
  
}


class SplashActivityState extends State<SplashScreen>{

  static BuildContext contextd;

//  Timer timer = Timer(Duration(seconds: 5), (){
//    afterFiveMinute();
//  });

  @override
  Widget build(BuildContext context) {
    contextd = context;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double quaterWidth = width/4;
    double quaterHeigh = height/4;

//    print(width/4);
//    print(height/4);
//    print(width);
    print(quaterHeigh*2);
    print(quaterHeigh*3);

    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("Hello");
      }),
      appBar: AppBar(
        title: Center(
          child: Text("Hello Appbar"),
        ),
      ),
      body: Column(
        children: <Widget>[
//          Row(
//            children: <Widget>[
//              Text("Hello World"),
//              Text("Hello World"),
//              Text("Hello World"),
//              Text("Hello World"),
//            ],
//          ),
//          Row(
//            children: <Widget>[
//              Text("Hello World"),
//              Text("Hello World"),
//              Text("Hello World"),
//              Text("Hello World"),
//            ],
//          ),
        makeAwesomeview(quaterHeigh/2, width,"Test Mode","Your Sub dam!"),
        ],
      ),
    );
  }


  makeAwesomeview(double height, double width, String headLineText, String subText){
    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        SizedBox(height: height,width: width),
//        Text(headLineText,
//        textAlign: TextAlign.right,),
//        Text(subText,
//          textAlign: TextAlign.left,),
//        Text(subText,
//          textAlign: TextAlign.left,),
//        Text(subText)
//      ],

    children: <Widget>[
      Container(
        height: height,
        width: width,
        color: Colors.accents[4],
        padding: EdgeInsets.all(10.0),
      )
    ],
    
    );
  }

  static void afterFiveMinute() {
    Navigator.push(contextd,MaterialPageRoute(builder: (contextd){
     return Home();
    }));
  }

  @override
  void dispose() {
//    timer.cancel();
    super.dispose();
  }

}