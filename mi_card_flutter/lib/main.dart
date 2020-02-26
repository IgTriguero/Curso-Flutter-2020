import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/yo.jpeg'),
              ),
              Text(
                'Ignacio Triguero',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Lacquer',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'JUST A STUDENT',
                style: TextStyle(
                  color: Colors.teal[100],
                  fontSize: 20,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
                width: 180,
                child: Divider(
                  color: Colors.teal[200],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '+34 678 21 34 23',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'ignacio@uem.es',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
