import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('I am Spain'),
            backgroundColor: Colors.pinkAccent,
          ),
          backgroundColor: Colors.pink[200],
          body: Center(
            child: Image(
              image: AssetImage('resources/espanita.gif'),
            ),
          ),
        ),
      ),
    );
