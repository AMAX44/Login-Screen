import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with Validationmixin{

  final formkey = GlobalKey<FormState>();

    String email = '';
    String password = '';
  
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(


      margin : EdgeInsets.all(20.0),
      child : Form(
        key: formkey,
        child: Column(
          children : [

            emailField(),
            passwordField(),
            Container(margin:EdgeInsets.only(top:20.0)),
            submitButton(),


          ],
        ),

      )
    );
  }

  Widget emailField(){

    return TextFormField(

      keyboardType: TextInputType.emailAddress,

      decoration: InputDecoration(

        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        border: OutlineInputBorder(),
        
      

        labelText: 'Email Address',
        hintText: 'You@example.com',
      ),

      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );


  }

  Widget passwordField(){

    return TextFormField(

      obscureText: true,

      decoration: InputDecoration(

        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        border: OutlineInputBorder(),

        labelText: 'Password',
        hintText: 'Password',
      ),

      validator: validatePassword,

      onSaved: (String value){
        password = value;
      }
    );



  }

  Widget submitButton(){

    return RaisedButton(

      color: Colors.blue,

      child: Text('SUBMIT!'),
      textColor: Colors.white,

      onPressed: (){

        if(formkey.currentState.validate())
          
          formkey.currentState.save();
          print('Thanks for sharing your Email Address "$email" and password "$password". We will be contacting you soon.');

        
      },
    );


  }


}