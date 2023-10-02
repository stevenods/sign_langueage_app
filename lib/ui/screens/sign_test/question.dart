//import 'package:flutter/material.dart';

class Question {
  late String questionText;
  late String questionAnswer1;
  late String questionOption1;
  late String questionOption2;
  late String questionOption3;
  late String questionOption4;
  late bool questionAnswer;
  Question(String q, String a, String op1, String op2, String op3, String op4) {
    questionText = q;
    questionAnswer1 = a;
    questionOption1 = op1;
    questionOption2 = op2;
    questionOption3 = op3;
    questionOption4 = op4;
  }
}
