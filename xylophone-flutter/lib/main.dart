import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  final player = AudioPlayer();

  playAudio(int noteNum) async {
    await player.play(AssetSource('note$noteNum.wav'));
  }

  Widget buildKey({required int keyNum, required MaterialColor color}) {
    return Expanded(
      child: TextButton(
          child: Container(color: color),
          onPressed: () => playAudio(keyNum)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildKey(keyNum: 1, color: Colors.red),
                buildKey(keyNum: 2, color: Colors.orange),
                buildKey(keyNum: 3, color: Colors.yellow),
                buildKey(keyNum: 4, color: Colors.green),
                buildKey(keyNum: 5, color: Colors.teal),
                buildKey(keyNum: 6, color: Colors.blue),
                buildKey(keyNum: 7, color: Colors.purple)
              ],
            ),
          height: double.infinity,
          ),
        ),
      ),
    );
  }
}
