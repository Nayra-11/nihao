import 'package:flutter/material.dart';
import '../models/model.dart';

class PhrasesItem extends StatefulWidget {
  final Model item;
  final Color color;

  const PhrasesItem({super.key, required this.item, required this.color});

  @override
  _PhrasesItemState createState() => _PhrasesItemState();
}

class _PhrasesItemState extends State<PhrasesItem> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: widget.color,
      height: screenHeight * 0.15,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.enName,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.item.chiName,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isPlaying = !isPlaying;
              });
              widget.item.playAudio();
            },
            icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                key: ValueKey<bool>(isPlaying),
                color: isPlaying ? Colors.green : Colors.white,
                size: screenWidth * 0.08,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
