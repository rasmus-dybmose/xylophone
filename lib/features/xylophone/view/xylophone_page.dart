import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/features/xylophone/widgets/idiophone.dart';

const note1 = 'assets/sounds/note1.wav';
const note2 = 'assets/sounds/note2.wav';
const note3 = 'assets/sounds/note3.wav';
const note4 = 'assets/sounds/note4.wav';
const note5 = 'assets/sounds/note5.wav';
const note6 = 'assets/sounds/note6.wav';
const note7 = 'assets/sounds/note7.wav';

class XylophonePage extends StatelessWidget {
  XylophonePage({super.key});
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Idiophone(
            color: Colors.red,
            localFile: note1,
          ),
        ),
        Flexible(
          child: Idiophone(
            color: Colors.orange,
            localFile: note2,
          ),
        ),
        Flexible(
          child: Idiophone(
            color: Colors.yellow,
            localFile: note3,
          ),
        ),
        Flexible(
          child: Idiophone(
            color: Colors.green,
            localFile: note4,
          ),
        ),
        Flexible(
          child: Idiophone(
            color: Colors.teal,
            localFile: note5,
          ),
        ),
        Flexible(
          child: Idiophone(
            color: Colors.blue,
            localFile: note6,
          ),
        ),
      ],
    );
  }
}
