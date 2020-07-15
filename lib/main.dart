import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicEightBall());
}

class MagicEightBall extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Content(),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Widget firstDice;

  Widget secondDice;

  @override
  void initState() {
    firstDice =   Image.asset("images/dice1.png", height: 200, width: 200);
    secondDice = Image.asset("images/dice1.png", height: 200, width: 200);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Dicee"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: InkWell(
            onTap: (){
              setState(() {
                firstDice = randomDice();
                secondDice = randomDice();
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          firstDice,
          secondDice
        ],
      ),
          )),
    );
  }

  Widget randomDice(){
    int index = Random().nextInt(6) + 1;
    return Image.asset("images/dice${index}.png", height: 200, width: 200);
  }
}
