import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Idiophone extends StatelessWidget {
  Idiophone({super.key, required this.color, required this.localFile});

  final Color color;
  final player = AudioPlayer();
  final String localFile;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: color,
        child: InkWell(onTap: () async {
          await player.stop();
          await player.play(DeviceFileSource(localFile));
        }),
      ),
    );
  }
}
