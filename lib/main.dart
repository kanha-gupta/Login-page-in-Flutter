import 'package:flutter/material.dart';
import 'login.dart';
import 'registration.dart';
void main(){
  runApp(MaterialApp(
    initialRoute: 'login' ,
    routes: {
      'login' : (context)=>mylogin(),
      'register' :(context) => register(),
    },
  ));
}
