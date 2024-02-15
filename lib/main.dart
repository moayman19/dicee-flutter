import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDiceNum = 1;
  var rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
              child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/dice$leftDiceNum.png'),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/dice$rightDiceNum.png'),
                  )),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDiceNum = Random().nextInt(6) + 1;
                    rightDiceNum = Random().nextInt(6) + 1;
                  });
                },
                child: Text(
                  'Roll',
                  style: TextStyle(fontSize: 20, color: Colors.red[500]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
