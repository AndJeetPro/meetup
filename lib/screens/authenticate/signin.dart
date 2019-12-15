import 'package:flutter/material.dart';
import 'package:meetup/services/auth.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInState();
}

sharedPreff(Future<SharedPreferences> st) async {
  SharedPreferences preferences = await st;

  return preferences;
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  final RxSharedPreferences prefs =
      RxSharedPreferences(SharedPreferences.getInstance());

  String email = '';
  String password = '';

//  final SharedPreferences Sha = sharedPreff(SharedPreferences.getInstance());

  Future foo(Future<String> st) async {
    var val = await st;
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.accents[1],
        elevation: 0.6,
        title: Center(
          child: Text('Meet Up SignIn'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                onChanged: (val1) {
                  setState(() => password = val1);
                },
              ),
              SizedBox(height: 20.0),
              SizedBox.fromSize(
                  child: RaisedButton(
                      color: Colors.pink.shade400,
                      child: Text(
                        'Sign in',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        print(email);
                        print(password);
                      }),
              size: Size(250.0, 50.0),),
            ],
          ),
        ),
      ),
    );
  }
}
