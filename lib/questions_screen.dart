import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestionFromList = questions[0];


    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Text(currentQuestionFromList.text,
                style: const TextStyle(

                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
           ),
          const SizedBox(height: 30),
          AnswerButton(answerText: currentQuestionFromList.answers[0], onTap: (){}),
          AnswerButton(answerText: currentQuestionFromList.answers[1], onTap: (){}),
          AnswerButton(answerText: currentQuestionFromList.answers[2], onTap: (){}),
          AnswerButton(answerText: currentQuestionFromList.answers[3], onTap: (){}),

        ],
      ),
    );
  }
}
