import 'package:flutter/material.dart';
import 'package:want_some_coffee/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation : 0.0,
        centerTitle: true,
        title: Text('Sign In'),
      ) ,
      body: SafeArea(
        child : RaisedButton(
          child: Text('Sign In Anonymously'),
          onPressed: ()async{
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print('Error occured! Not signed in.');
            }else{
              print('Signed In !');
              print(result.uid);
            }
          },
        ),
      ) ,
    );
  }
}