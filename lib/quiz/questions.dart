import 'package:flutter/cupertino.dart';

class Question {
  int id, answer;
  String question;
  List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "What are the advantages of trees?",
    "options": ['produce oxygen O2', 'Produce Carbon dioxide (CO2)'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What causes deforestation?",
    "options": ['stop global warming', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
