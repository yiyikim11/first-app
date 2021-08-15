import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/start_quiz.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            'Gaming',
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Image.asset(
          'assets/images/gaming_adobespark.png',
          width: double.infinity,
          height: 220,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {},
          child: Container(
            width: 260,
            height: 130,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'RecyclingP',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/plastic5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/gaming_adobespark.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Quiz()),
            );
          },
          child: Container(
            width: 260,
            height: 130,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Quiz',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/plants2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
