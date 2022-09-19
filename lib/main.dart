import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Note(
                    color: Colors.red,
                    index: 1,
                  ),
                  Note(
                    color: Colors.orange,
                    index: 2,
                  ),
                  Note(
                    color: Colors.redAccent,
                    index: 3,
                  ),
                  Note(
                    color: Colors.blue,
                    index: 4,
                  ),
                  Note(
                    color: Colors.blueGrey,
                    index: 5,
                  ),
                  Note(
                    color: Colors.green,
                    index: 6,
                  ),
                  Note(
                    color: Colors.lightGreen,
                    index: 7,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Note extends StatelessWidget {
  const Note({
    Key? key,
    required this.color,
    required this.index,
  }) : super(key: key);

  final Color color;
  final int index;
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();

    return Expanded(
      child: GestureDetector(
        onTap: () {
          audioPlayer.play(
            AssetSource('assets_note$index.wav'),
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
