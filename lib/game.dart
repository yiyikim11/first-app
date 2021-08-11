import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            'Gaming',
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),

      ],
    );
  }
}
//Find safe area
//problem with commiting
//Todo: Design

