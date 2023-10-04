import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'VzT2xurZrbI',
  flags: YoutubePlayerFlags(
    autoPlay: true,
    mute: false,
    forceHD: true,
  ),
);

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          child: YoutubePlayer(
            controller: _controller,
            progressIndicatorColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
