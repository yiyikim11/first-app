import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/questioncard.dart';
import 'package:flutter_app/quiz/questioncontroller.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Text.rich(
                TextSpan(
                  text: 'Question ${_questionController.questionNumber.value}',
                  style: Theme.of(context).textTheme.headline4,
                  children: [
                    TextSpan(
                        text: "/5",
                        style: Theme.of(context).textTheme.headline5),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                //block swipe to next qn
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: 5,
                itemBuilder: (context, index) {
                  var list = _questionController.generateQuestion();
                  return QuestionCard(
                      question: _questionController.questions[index]);
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
