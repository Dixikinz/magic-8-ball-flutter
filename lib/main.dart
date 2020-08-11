import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball(
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballOpt = 1;

  void changeOpt (){setState(() {
                  ballOpt = Random().nextInt(5)+1;
  },);}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeOpt();
              },
              child: Image.asset('images/ball$ballOpt.png'),
            ),
          ),
        ],
      ),
    );
  }
}