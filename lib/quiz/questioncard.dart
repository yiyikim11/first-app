import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/option.dart';
import 'package:flutter_app/quiz/questioncontroller.dart';
import 'package:flutter_app/quiz/questions.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 50),
          ...List.generate(
            question.options.length,
            (index) => Option(
              text: question.options[index],
              index: index,
              press: () => _controller.checkAns(question, index),
            ),
          )
        ],
      ),
    );
  }
}
