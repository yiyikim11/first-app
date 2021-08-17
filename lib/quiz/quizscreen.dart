import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/body.dart';
import 'package:flutter_app/quiz/questioncontroller.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent, elevation: 0),
            onPressed: _controller.nextQuestion,
            child: Text(
              "Skip",
              style: TextStyle(fontFamily: 'Itim'),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}

//onPressed: _controller.nextQuestion
