import 'package:flutter/material.dart';
import 'package:nihao/screens/phrases.dart';
import '../widgets/cathome.dart';
import 'colors.dart';
import 'family.dart';
import 'numbers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..forward();

    _animation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageSize = screenWidth * 0.45;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [CategoryWidget(imagePath: 'assets/images/photo/family.png', page: Familly(), size: imageSize, animation: _animation)]),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [CategoryWidget(imagePath: 'assets/images/photo/colors.png', page: ColorPage(), size: imageSize, animation: _animation)]),
              Row(children: [CategoryWidget(imagePath: 'assets/images/photo/numbers.png', page: Numbers(), size: imageSize, animation: _animation)]),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [CategoryWidget(imagePath: 'assets/images/photo/phases.png', page: Phrases(), size: imageSize, animation: _animation)]),
            ],
          ),
        ),
      ),
    );
  }
}
