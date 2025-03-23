import 'package:flutter/material.dart';
import 'package:nihao/models/model.dart';

class Item extends StatefulWidget {
  final Model item;
  final Color color;

  const Item({super.key, required this.item, required this.color});

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isPlaying = false;

  void _playAudio() {
    if (isPlaying) return;

    setState(() {
      isPlaying = true;
    });

    widget.item.playAudio().then((_) {
      if (mounted) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isPortrait = screenHeight > screenWidth;

    return Container(
      width: double.infinity,
      color: widget.color,
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.015,
        horizontal: screenWidth * 0.05, // Reduced padding for consistency
      ),
      child: Row(
        children: [
          Container(
            height: isPortrait ? screenHeight * 0.1 : screenHeight * 0.2,
            width: isPortrait ? screenWidth * 0.2 : screenWidth * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(screenWidth * 0.02),
            ),
            child: widget.item.image != null
                ? Image.asset(
              widget.item.image!,
              fit: BoxFit.contain,
            )
                : SizedBox.shrink(),
          ),
          SizedBox(width: screenWidth * 0.02), // Reduced space between image and text

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.enName,
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.item.chiName,
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

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
                size: screenWidth * 0.08,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
