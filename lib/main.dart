import 'package:flutter/material.dart';
import 'package:todoupdate/home.dart';
import 'package:todoupdate/login.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


void main() =>  runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    accentColor: Colors.orange,
    primaryColor: Colors.white,
    brightness: Brightness.dark,

  ),
  initialRoute: '/login',

  routes: {
    '/' : (context) => Home(),
    '/login' : (context) => Login(),
  },


));

