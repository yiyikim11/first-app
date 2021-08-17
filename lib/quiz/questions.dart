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

const List sampleData = [
  {
    "id": 1,
    "question":
        '"Used by date" is the final deadline for food consumption to be recognized that there will be no health or safety issues.',
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        'The expiration date of milk is 10 days, but the used by date is 70 days.',
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Most developed countries in Europe use the used by date system.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "South Korea plans to use the used by date system from 2030",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "The advantages of trees are that they produce carbon dioxide, causing floods and absorb oxygen",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question":
        "Using a used by date can result in less food being thrown out.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Acid rain is caused by NH3 and CFCs react with oxygen.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question":
        "The ozone layer is a region surrounding the earth that absorbs and protects the planet from the sun’s ultraviolet rays.",
    "options": ['Correct', 'Incorrect'],
    "answer_index": 1,
  },
];
