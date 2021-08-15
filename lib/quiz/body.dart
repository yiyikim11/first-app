import 'package:flutter/material.dart';
import 'package:flutter_app/quiz/questions.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text.rich(
              TextSpan(
                text: 'Question 1',
                style: Theme.of(context).textTheme.headline4,
                children: [
                  TextSpan(
                      text: "/5", style: Theme.of(context).textTheme.headline5),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text(
                    sample_data[0]['question'],
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'O',
                    style: TextStyle(color: Colors.black38, fontSize: 18),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black38)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2. X',
                    style: TextStyle(color: Colors.black38, fontSize: 18),
                  ),
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black38)),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
