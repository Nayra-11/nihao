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


  Future<void> _playAudio() async {
    setState(() {
      isPlaying = true;
    });


    await widget.item.playAudio();

    if (mounted) {
      setState(() {
        isPlaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      color: widget.color,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.015,
        horizontal: screenWidth * 0.05,
      ),
      child: Row(
        children: [
          // Text column for English and Chinese names
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

          // Spacing between text and icon button
          SizedBox(width: screenWidth * 0.05),

          // Play/Pause button with animation
          IconButton(
            onPressed: _playAudio,
            icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: Icon(
                isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                key: ValueKey<bool>(isPlaying),
                color: isPlaying ? Colors.green : Colors.white,
                size: screenWidth * 0.08, // Responsive size
              ),
            ),
          ),
        ],
      ),
    );
  }
}
