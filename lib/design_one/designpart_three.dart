
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignPart_Three extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DesginPartStateThree();
  }

}

class DesginPartStateThree extends State<DesignPart_Three>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(null, Platform.isAndroid?225:244), child: Container(
        color: Colors.cyanAccent,
      ),

      ),
      body: Container(

      ),
      bottomNavigationBar: Container(

      ),
    );
  }

}