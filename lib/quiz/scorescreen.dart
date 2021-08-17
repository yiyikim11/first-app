import 'package:flutter/material.dart';
import 'package:flutter_app/game.dart';
import 'package:flutter_app/quiz/questioncontroller.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  // const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 2),
              SizedBox(
                width: double.infinity,
                height: 50,
              ),
              Text('Score', style: Theme.of(context).textTheme.headline3),
              Spacer(flex: 2),
              Text(
                  "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                  style: Theme.of(context).textTheme.headline4),
              Image.asset(
                'assets/images/smile.gif',
                width: double.infinity,
                height: 220,
              ),
              SizedBox(
                width: double.infinity,
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Game()));
                },
                child: Container(
                  width: 100,
                  height: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Back',
                      style: TextStyle(
                        fontFamily: 'Itim',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
