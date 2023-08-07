import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am Poor!'),
        backgroundColor: Colors.blue[600],
      ),
      body: const Center(
        child: Image(
          image: NetworkImage('https://previews.123rf.com/images/magicleaf/magicleaf2001/magicleaf200101809/138155811-coal-of-energy-vector-icon-cartoon-vector-icon-isolated-on-white-background-coal-of-energy.jpg')
        )
      )
    )
  ));
}
