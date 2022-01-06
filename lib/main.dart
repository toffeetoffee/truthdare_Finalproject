import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('วันนี้กินอะไรดี?'),
          backgroundColor: Colors.redAccent,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int midNumber = 1;
  int rightNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftNumber = Random().nextInt(10) + 1;
      midNumber = Random().nextInt(10) + 1;
      rightNumber = Random().nextInt(10) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/food$leftNumber.jpg',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/food$midNumber.jpg',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/food$rightNumber.jpg',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
