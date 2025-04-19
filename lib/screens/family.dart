import 'package:flutter/material.dart';
import 'package:nihao/widgets/item.dart';
import '../models/model.dart';

class Familly extends StatelessWidget {
Familly({super.key});

   List<Model> family=[
     Model(enName: 'Grandfather',chiName: '爷爷',image: 'assets/images/members/family_grandfather.png',audio: 'sounds/members/grandba.mp3'),
      Model(enName: 'Grandmother',chiName: '奶奶',image: 'assets/images/members/family_grandmother.png',audio: 'sounds/members/grandma.mp3'),
      Model(enName: 'Father',chiName: '爸爸',image: 'assets/images/members/family_father.png',audio: 'sounds/members/father.mp3'),
     Model(enName: 'Mother',chiName: '妈妈',image: 'assets/images/members/family_mother.png',audio: 'sounds/members/mother.mp3'),
     Model(enName: 'Older Brother',chiName: '哥哥',image: 'assets/images/members/family_older_brother.png',audio: 'sounds/members/bigbro.mp3'),
     Model(enName: 'Older Sister',chiName: '姐姐',image: 'assets/images/members/family_older_sister.png',audio: 'sounds/members/bigsis.mp3'),
     Model(enName: 'Younger Brother',chiName: '弟弟',image: 'assets/images/members/family_younger_brother.png',audio: 'sounds/members/smallbro.mp3'),
     Model(enName: 'Younger Sister',chiName: '妹妹',image: 'assets/images/members/family_younger_sister.png',audio: 'sounds/members/smallsis.mp3'),
     Model(enName: 'Son',chiName: '儿子',image: 'assets/images/members/family_son.png',audio: 'sounds/members/son.mp3'),
     Model(enName: 'Daughter',chiName: '女儿',image: 'assets/images/members/family_daughter.png',audio: 'sounds/members/daughter.mp3'),
   ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFB8EA0 ),
        foregroundColor: Colors.white,
        title: Text('Family',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context,index){
          return Item(item: family[index],color: Color(0xffFB7EA0),);
        },

      )
    );

  }
}
