import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  final Widget page;
  final double size;
  final Animation<Offset> animation;

  const CategoryWidget({
    required this.imagePath,
    required this.page,
    required this.size,
    required this.animation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
        child: Hero(
          tag: imagePath,
          child: Container(
            margin: EdgeInsets.all(10),
            width: size,
            height: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
