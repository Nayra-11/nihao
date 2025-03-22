import 'package:audioplayers/audioplayers.dart';

class Model{
  final String enName;
  final String chiName;
  final String? image;
  final String audio;
  playAudio(){
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
  Model({required this.enName,required this.chiName,this.image,required this.audio});
}