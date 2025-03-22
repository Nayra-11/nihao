import 'package:flutter/material.dart';
import 'package:nihao/widgets/item.dart';

import '../models/model.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});

  List<Model> colors=[
    Model(enName: 'white',chiName: '白色',image: 'assets/images/colors/white.png',audio: 'sounds/colors/white.mp3'),
    Model(enName: 'black',chiName: '黑色',image: 'assets/images/colors/black.png',audio: 'sounds/colors/black.mp3'),
    Model(enName: 'red',chiName: '红色',image: 'assets/images/colors/red.png',audio: 'sounds/colors/red.mp3'),
    Model(enName: 'green',chiName: '绿色',image: 'assets/images/colors/green.jpg',audio: 'sounds/colors/green.mp3'),
    Model(enName: 'yellow',chiName: '黄色',image: 'assets/images/colors/yellow.png',audio: 'sounds/colors/yellow.mp3'),
    Model(enName: 'blue',chiName: '蓝色',image: 'assets/images/colors/blue.png',audio: 'sounds/colors/blue.mp3'),
    Model(enName: 'brown',chiName: '棕色',image: 'assets/images/colors/brown.png',audio: 'sounds/colors/brown.mp3'),
    Model(enName: 'gray',chiName: '灰色',image: 'assets/images/colors/grey.png',audio: 'sounds/colors/grey.mp3'),
    Model(enName: 'purple',chiName: '紫色',image: 'assets/images/colors/purple.png',audio: 'sounds/colors/purple.mp3'),
    Model(enName: 'pink',chiName: '粉色',image: 'assets/images/colors/pink.png',audio: 'sounds/colors/pink.mp3'),

  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5E1DA ),
          foregroundColor: Colors.black,
          title: Text('Colors',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context,index){
            return Item(item: colors[index],color: Color(0xffF9CD9E),);
          },

        )
    );

  }
}
