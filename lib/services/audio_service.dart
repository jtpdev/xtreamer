import 'package:just_audio/just_audio.dart';
import 'package:xtreamer/models/media_itam.dart';

class AudioService {
  final _url = 'https://stream.enetbras.com.br/8028/stream';
  final _player = AudioPlayer();

  init() async {
  //   await JustAudioBackground.init(
  //    androidNotificationChannelId: 'com.logrocket.demo.channel.audio',
  //    androidNotificationChannelName: 'Audio playback',
  //    androidNotificationOngoing: true,
  //  );
    // final duration = await _player.setUrl(_url);
    // final duration = await _load(_url);
    // print(duration.inHours);
    _load(_url);
  }

  @override
 Future<Duration> _load(String url) async {
   final source = AudioSource.uri(
     Uri.parse(url),
     tag: MediaItem(
       id: '1',
       title: "Stream",
     ),
   );
   return await _player.setAudioSource(source) ?? Duration.zero;
 }

  play() async {
    await _player.play();
  }

  pause() async {
    await _player.pause();
  }
}
