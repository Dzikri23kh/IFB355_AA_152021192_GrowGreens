import 'package:flutter/material.dart';
import 'package:growgreen/screens/catatan_screen.dart';
import 'package:growgreen/screens/konversisuhu_screen.dart';
import 'package:growgreen/screens/splash_screen.dart';
import 'package:growgreen/screens/login_screen.dart';
import 'package:growgreen/screens/register_screen.dart';
import 'package:growgreen/screens/home_screen.dart';
import 'package:growgreen/screens/kalkulator_screen.dart';
import 'package:growgreen/screens/bmi2_screen.dart';
import 'package:growgreen/screens/profile_screen.dart';
import 'package:growgreen/screens/konversi_panjang.dart';
import 'package:growgreen/screens/dashboard_screen.dart';
import 'package:growgreen/screens/konversi_matauang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override   
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home: Dashboard2Screen(),
    );
  }
}

