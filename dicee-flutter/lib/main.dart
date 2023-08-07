import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {

    return Container(
        child: Center(
          child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Image(
                          image: AssetImage('images/dice$leftDiceNumber.png'),
                        ),
                        onPressed: () => setState((){leftDiceNumber = randomRoll();}),
                      ),
                    )
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Image(
                          image: AssetImage('images/dice$rightDiceNumber.png'),
                        ),
                        onPressed: () => setState(() {
                          rightDiceNumber = randomRoll();
                        }),
                      ),
                    )
                )
              ]
          ),
        )
    );
  }

  int randomRoll() {
    return Random().nextInt(6) + 1;
  }
}
