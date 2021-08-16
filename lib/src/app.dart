import 'package:flutter/material.dart';
import 'screens/login_screen.dart';


class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      
      home : Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xffBDB76B),
          title : Text('Log in Screen')
        ),

        backgroundColor: Color(0xffEEE8AA),

        body : LoginScreen(),
      ),
    );
  }
}