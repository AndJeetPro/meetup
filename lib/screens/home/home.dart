import 'package:flutter/material.dart';
import 'package:meetup/screens/authenticate/signin.dart';
import 'package:meetup/services/auth.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget{

  BuildContext context;
  final AuthService _authService = AuthService();
  final RxSharedPreferences prefs = RxSharedPreferences(SharedPreferences.getInstance());



  @override
  Widget build(BuildContext context) {
    this.context = context;
      return WillPopScope(
        onWillPop: () async{
          return true;
        },
        child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.accents[1],
          elevation: 0.6,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('DashBoard')),
            ),
          ),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {

                  dynamic result = await _authService.signOutUser();

                  if (!result) {
                    print('SignOut error');
                  } else {
                    print('SignOut success');
                    print(result);
                    prefs.setString("user_uid", "");
                  }
                },
                icon: Icon(Icons.person),
                label: Text('Sign Out'))
          ],
        ),
//        body: Image.asset('assets/images/hunt_splash.png'),
      ),

    );
  }
}