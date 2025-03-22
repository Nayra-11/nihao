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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: widget.color,
      height: screenHeight * 0.12,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Row(
        children: [
          Container(
            height: screenHeight * 0.12,
            width: screenWidth * 0.25,
            color: Colors.white,
            child: widget.item.image != null
                ? Image.asset(
              widget.item.image!,
              width: screenWidth * 0.2,
              height: screenHeight * 0.1,
              fit: BoxFit.contain,
            )
                : SizedBox.shrink(),
          ),
          SizedBox(width: screenWidth * 0.03),
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
