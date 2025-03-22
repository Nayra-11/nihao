import 'package:flutter/material.dart';
import 'package:nihao/widgets/item.dart';


import '../models/model.dart';

class Numbers extends StatelessWidget {
  Numbers({super.key});

  List<Model> number=[
    Model(enName: 'One',chiName: '一',image: 'assets/images/numbers/1.png',audio: 'sounds/numbers/1.mp3'),
    Model(enName: 'Two',chiName: '二',image: 'assets/images/numbers/2.png',audio: 'sounds/numbers/2.mp3'),
    Model(enName: 'Three',chiName: '三',image: 'assets/images/numbers/3.png',audio: 'sounds/numbers/3.mp3'),
    Model(enName: 'Four',chiName: '四',image: 'assets/images/numbers/4.png',audio: 'sounds/numbers/4.mp3'),
    Model(enName: 'Five',chiName: '五',image: 'assets/images/numbers/5.png',audio: 'sounds/numbers/5.mp3'),
    Model(enName: 'Six',chiName: '六',image: 'assets/images/numbers/6.png',audio: 'sounds/numbers/6.mp3'),
    Model(enName: 'Seven',chiName: '七',image: 'assets/images/numbers/7.png',audio: 'sounds/numbers/7.mp3'),
    Model(enName: 'Eight',chiName: '八',image: 'assets/images/numbers/8.png',audio: 'sounds/numbers/8.mp3'),
    Model(enName: 'Nine',chiName: '九',image: 'assets/images/numbers/9.png',audio: 'sounds/numbers/9.mp3'),
    Model(enName: 'Ten',chiName: '十',image: 'assets/images/numbers/10.png',audio: 'sounds/numbers/10.mp3'),
  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5E1DA ),
          foregroundColor: Colors.black,
          title: Text('Numbers',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
        ),
        body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context,index){
            return Item(item: number[index],color: Color(0xff31BCA5),);
          },

        )
    );

  }
}
