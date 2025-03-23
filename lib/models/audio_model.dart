import 'package:audioplayers/audioplayers.dart';

class AudioModel {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playWelcomeAudio() async {
    try {
      await _audioPlayer.play(AssetSource('sounds/phases/hi.mp3'));
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  Future<void> stopAudio() async {
    await _audioPlayer.stop();
  }

  void dispose() {
    _audioPlayer.dispose();
  }
}
