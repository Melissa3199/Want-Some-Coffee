import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:want_some_coffee/models/user.dart';
import 'package:want_some_coffee/screens/home/home.dart';

import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if(user == null){
      return Authenticate();
    }
    else {
      return Home();

    }
    
  }
}