

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    double width = (MediaQuery.of(context).size.width/4);

    // TODO: implement build
    return SizedBox(
      width: width*2,
      child: Drawer(
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }

}