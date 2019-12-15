import 'package:flutter/material.dart';
import 'package:meetup/screens/authenticate/signin.dart';

class Authenticate extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>_AuthenticateState();
}

class _AuthenticateState extends State<Authenticate>{

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SignIn(),
    );
  }

}
