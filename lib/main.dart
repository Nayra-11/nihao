import 'package:flutter/material.dart';
import 'package:nihao/screens/home.dart';
import 'package:nihao/screens/splash_screen.dart';

//main
void main() {
  runApp(Nihao());
}

class Nihao extends StatelessWidget {
  const Nihao({super.key});

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

