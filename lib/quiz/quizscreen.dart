import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.green,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent, elevation: 0),
            onPressed: () {},
            child: Text(
              "Skip",
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}

//onPressed: _controller.nextQuestion
