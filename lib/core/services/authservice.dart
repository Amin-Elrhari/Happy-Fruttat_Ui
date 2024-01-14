





import 'package:firebase_auth/firebase_auth.dart';

import '../../model/user.dart';



class  AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users? _userFromFirebase(User? user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  Stream<Users?> get user {
    return _auth.authStateChanges()
        .map((User? user) => _userFromFirebase(user));
  }


  Future signOut() async {
    try {
      return await _auth.signOut();
    }
    catch (e) {
      print(' Erreure !!!!!!!!!${e.toString()}');
      return null;
    }
  }




  Future signInwithemailandpass(String email, String pass) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
