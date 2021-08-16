import 'package:flutter/material.dart';

class Validationmixin {


  String validateEmail(String value){

    if(!value.contains('@')){

      return 'Enter a valid Email Address';
    }
  }

  String validatePassword(String value){

    if(value.length<4){

      return 'Password must contain atleast one number';
    }
  }
}