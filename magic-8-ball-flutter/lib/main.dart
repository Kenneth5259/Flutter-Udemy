import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text('Ask Me Anything', ),
        ),
        backgroundColor: Colors.blue[800],
        toolbarHeight: 25,
      ),
      body: Container(
        child: Ball(),
        color: Colors.blue[400],
      )
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Image(
            image: AssetImage('images/ball$ballNum.png')
          ),
          onPressed: getBallResponse,
        )
      ],
    );
  }

  void getBallResponse() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }
}

