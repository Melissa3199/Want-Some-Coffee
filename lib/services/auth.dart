import 'package:firebase_auth/firebase_auth.dart';
import 'package:want_some_coffee/models/user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance; 
  //Create a customize uer from Firebase
  User _userFromFirebase(FirebaseUser user){
    return user!=null ? User(uid : user.uid) : null;
  }
  //auth change user stream
  Stream<User> get user{
    return _auth.onAuthStateChanged.map((FirebaseUser user)=>_userFromFirebase(user));
      }
      //Sign in anon
      Future signInAnon() async{
        try{
          AuthResult result = await _auth.signInAnonymously();
          FirebaseUser user = result.user;
          return _userFromFirebase(user);
        }catch(e){
          print(e.toString());
          return null;
        }
      }
    //Sign out 

  Future signOut() async{
    try {
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
    
}
    
    