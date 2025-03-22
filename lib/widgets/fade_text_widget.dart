import 'package:flutter/material.dart';

class FadeTextWidget extends StatelessWidget {
  final Animation<double> animation;

  const FadeTextWidget({required this.animation, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return FadeTransition(
      opacity: animation,
      child: Column(
        children: [
          Text(
            "Nihao",
            style: TextStyle(
              fontSize: screenWidth * 0.12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "你好",
            style: TextStyle(
              fontSize: screenWidth * 0.08,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
