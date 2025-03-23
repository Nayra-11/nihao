import 'package:audioplayers/audioplayers.dart';

class Model {
  final String enName;
  final String chiName;
  final String? image;
  final String audio;
  final AudioPlayer _player = AudioPlayer();

  Model({
    required this.enName,
    required this.chiName,
    this.image,
    required this.audio,
  });

  Future<void> playAudio() async {
    await _player.play(AssetSource(audio));
    await _player.onPlayerComplete.first;
  }
}
