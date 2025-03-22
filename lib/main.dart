import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:nihao/screens/home.dart';
import 'package:nihao/screens/splash_screen.dart';


void main() {
  runApp(Nihao());
}

class Nihao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Home(),
      },
    );
  }
}

