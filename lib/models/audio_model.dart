import 'package:audioplayers/audioplayers.dart';

class AudioModel {
  final AudioPlayer _audioPlayer = AudioPlayer();

  void playWelcomeAudio() async {
    await _audioPlayer.play(AssetSource('audio/welcome.mp3'));
  }

  void dispose() {
    _audioPlayer.dispose();
  }
}
