import 'package:firebase_auth/firebase_auth.dart';
import 'package:meetup/model/user.dart';

class AuthService {
  // sign in anonymous

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _uidFromFirebaseAuth(FirebaseUser user) {
    return user != null ? User(uid: user.uid.toString()) : null;
  }

  Stream<User> get users {
    return _auth.onAuthStateChanged.map(_uidFromFirebaseAuth);
  }

  Future signInAnony() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _uidFromFirebaseAuth(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOutUser() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

// sign in with email and password

//register with email and password

// sign out
}
