import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meetup/model/user.dart';
import 'package:meetup/screens/wrapper.dart';
import 'package:meetup/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().users,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
