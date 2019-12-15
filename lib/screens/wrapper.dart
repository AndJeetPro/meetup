import 'package:flutter/material.dart';
import 'package:meetup/model/user.dart';
import 'package:meetup/screens/authenticate/authenticate.dart';
import 'package:meetup/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
//return SplashScreen(seconds: 15,
//    navigateAfterSeconds:
//    ,
//
//);

    if (user == null) {
      print('null value');
      return Authenticate();
    } else {
      print(user.uid);
      return Home();
    }
  }
}
