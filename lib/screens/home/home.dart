import 'package:flutter/material.dart';
import 'package:want_some_coffee/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation : 0.0,
        title: Text('Sign In'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async{
             await _auth.signOut();
            }, 
            icon: Icon(Icons.person), 
            label: Text("logout"))
        ],
      ) ,
      
    );
  }
}