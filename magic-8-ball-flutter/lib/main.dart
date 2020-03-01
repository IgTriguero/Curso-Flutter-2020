import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Ask me what you want'),
            backgroundColor: Colors.red,
          ),
          body: Magic8(),
        ),
      ),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8Page createState() => _Magic8Page();
}

class _Magic8Page extends State<Magic8> {
  var foto = 1;
  void changeFoto() {
    setState(() {
      foto = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            changeFoto();
          });
        },
        child: Image.asset('images/ball$foto.png'),
      ),
    );
  }
}
