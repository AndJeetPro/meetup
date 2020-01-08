import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashBoardActivity();
  }
}

class DashBoardActivity extends State<DashBoard> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  final TextStyle textstyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  final InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    double appbarHieght = AppBar().preferredSize.height + 44;
    double height = (MediaQuery.of(context).size.height - appbarHieght) / 4;
    double width = (MediaQuery.of(context).size.width / 4);

    print(appbarHieght);
    print(height);


    return Scaffold(
      key: _globalKey,
      appBar: PreferredSize(
        preferredSize: Size(null, Platform.isAndroid ? 170 : 200),
        child: Container(
//          color: Colors.redAccent,
//          decoration: BoxDecoration(boxShadow: [
//            BoxShadow(color: Color.fromRGBO(255, 255, 255, 0.7), spreadRadius: 5, blurRadius: 2)
//          ]),
          decoration: BoxDecoration(
//            color: Color.fromARGB(255,210, 210, 210),
            color: Color.fromRGBO(242, 242, 242, 0.7),
            boxShadow: [
              BoxShadow(
//                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  color: Color.fromARGB(255,210, 210, 210),
                  spreadRadius: 0.5,
                  blurRadius: 1)
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          width: MediaQuery.of(context).size.width,
          height: Platform.isAndroid ? 170 : 200,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: Platform.isAndroid ? 80 : 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(242, 242, 242, 0.7),
//                    color: Colors.white70,
                        spreadRadius: 0.5,
                        blurRadius: 1)
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.blueAccent,
                      height: Platform.isAndroid ? 24 : 44,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25)),),
                      height: Platform.isAndroid ? 56 : 56,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(
                                left: 25.0,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
//                            borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/hunt_splash.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              _globalKey.currentState.openDrawer();
                            },
                          ),
                          Container(
                            width: width * 3,
                            alignment: Alignment.center,
//                        margin: EdgeInsets.only(left: 60),
                            child: Text(
                              "Ajit Singh",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: Platform.isAndroid ? 90 : 100,
              )
            ],
          ),
        ),
      ),
      drawer: SizedBox(
        width: width * 3 - 10,
        child: Drawer(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: Platform.isAndroid ? 170 : 200,
                  child: PreferredSize(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(229, 229, 229, 0.7),
                              blurRadius: 0.2,
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: Platform.isAndroid ? 13 : 44,
                                color: Colors.blueAccent,
                              ),
                              Stack(
                                alignment: AlignmentDirectional.topCenter,
                                children: <Widget>[
                                  Container(
                                    height: 104,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
//                                        color: Color.fromRGBO(229, 229, 229, 0.7),
                                            color: Colors.blueAccent,
                                            blurRadius: 0.3,
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.only(
                                              left: 10.0,
                                              top: 10.0,
                                              right: 20.0,
                                              bottom: 5.0),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
//                            borderRadius: BorderRadius.circular(10.0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/hunt_splash.png'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Text(
                                              "Ajit Singh",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              "test@gmail.com",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      preferredSize: Size(width * 3 - 40, 200)),
                ),
//                Divider(
//                  height: 2,
//                  thickness: 2,
//                  color: Colors.grey,
//                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    left: 10.0, top: 10.0, right: 10.0, bottom: 5.0),
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/images/hunt_splash.png'),
                        fit: BoxFit.fill)),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.grey,
                  )),
              Container(
//                color: Colors.black,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: height * 3,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          focusColor: Colors.transparent,
                          hintText: "Enter Text Here.....",
//                        suffixText: "Hello",
//                        labelText: "Tell Something about your self",
//                        labelStyle: TextStyle(color: Colors.red, fontSize: 20, letterSpacing: 3,textBaseline: TextBaseline.alphabetic,fontStyle: FontStyle.italic),
//                        helperText: "please Keep it short and simple",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          focusColor: Colors.transparent,
                          hintText: "Enter Text Here.....",
//                        suffixText: "Hello",
//                        labelText: "Tell Something about your self",
//                        labelStyle: TextStyle(color: Colors.red, fontSize: 20, letterSpacing: 3,textBaseline: TextBaseline.alphabetic,fontStyle: FontStyle.italic),
//                        helperText: "please Keep it short and simple",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          focusColor: Colors.transparent,
                          hintText: "Enter Text Here.....",
//                        suffixText: "Hello",
//                        labelText: "Tell Something about your self",
//                        labelStyle: TextStyle(color: Colors.red, fontSize: 20, letterSpacing: 3,textBaseline: TextBaseline.alphabetic,fontStyle: FontStyle.italic),
//                        helperText: "please Keep it short and simple",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          focusColor: Colors.transparent,
                          hintText: "Enter Text Here.....",
//                        suffixText: "Hello",
//                        labelText: "Tell Something about your self",
//                        labelStyle: TextStyle(color: Colors.red, fontSize: 20, letterSpacing: 3,textBaseline: TextBaseline.alphabetic,fontStyle: FontStyle.italic),
//                        helperText: "please Keep it short and simple",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    SizedBox(height: 20.0),
                    SizedBox.fromSize(
                      child: RaisedButton(
                          color: Colors.pink.shade400,
                          child: Text(
                            'Submit',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {}),
                      size: Size(250.0, 50.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//  Widget buildWidget(){
//        return ;
//  }

  Widget _buildTextComposer() {
    return IconTheme(
        data: IconThemeData(color: Theme.of(context).accentColor),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  controller: null,
                  onSubmitted: null,
                  decoration:
                      InputDecoration.collapsed(hintText: "Send a message"),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(icon: Icon(Icons.send), onPressed: null),
              )
            ],
          ),
        ));
  }
}
