import 'package:flutter/material.dart';
import 'package:nihao/widgets/phrases_item.dart';
import '../models/model.dart';

class Phrases extends StatelessWidget {
 Phrases ({super.key});

  List<Model> phrases=[
    Model(enName: 'See you later',chiName: '回头见',audio: 'sounds/phases/bye bye.mp3'),
    Model(enName: 'Goode Evening',chiName: '晚上好',audio: 'sounds/phases/good evening.mp3'),
    Model(enName: 'Good Morning',chiName: '早上好',audio: 'sounds/phases/good morning.mp3'),
    Model(enName: 'How are you',chiName: '你好吗',audio: 'sounds/phases/how are you.mp3'),
    Model(enName: 'I am fine thank you',chiName: '我很好谢谢',audio: 'sounds/phases/fine.mp3'),
    Model(enName: 'What is your name',chiName: '你叫什么名字',audio: 'sounds/phases/name.mp3'),
    Model(enName: 'My name is',chiName: '我的名字是',audio: 'sounds/phases/my name.mp3'),
    Model(enName: 'Thank you',chiName: '谢谢',audio: 'sounds/phases/thank.mp3'),
    Model(enName: 'Welcome',chiName: '欢迎',audio: 'sounds/phases/welcome.mp3'),
    Model(enName: 'I am sorry',chiName: '对不起',audio: 'sounds/phases/sorry.mp3'),
    Model(enName: 'Can you help me find a hotel? \nThis is the address',chiName: '你能帮我找到一家酒店吗？\n这是地址',audio: 'sounds/phases/hotel.mp3'),
    Model(enName: 'I Love You',chiName: '我爱你',audio: 'sounds/phases/ilove you.mp3'),
    Model(enName: 'What is Price?',chiName: '多少钱',audio: 'sounds/phases/price.mp3'),

  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5E1DA ),
          foregroundColor: Colors.black,
          title: Text('Phrases',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context,index){
            return PhrasesItem(item: phrases[index],color: Color(0xff51C38F),);
          },

        )
    );

  }
}
