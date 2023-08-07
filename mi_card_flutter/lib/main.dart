import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             CircleAvatar(
               radius: 50,
               backgroundColor: Colors.red,
               backgroundImage: AssetImage('images/IMG_0400.jpg'),
             ),
              Text('Kenneth Carroll',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                )
              ),
              Text('FULL STACK DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSans',
                    color: Colors.teal[100],
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal[100]
                )
              ),
              Card(
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal
                    ),
                    title: Text(
                      '+1 606 702 2887',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'SourceSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      )
                    )
                ),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                      Icons.mail,
                      color: Colors.teal
                  ),
                  title: Text(
                    'kenneth.james.carroll@gmail.com',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'SourceSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25)
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

