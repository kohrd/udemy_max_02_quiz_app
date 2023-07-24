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
    final currentQuestionFromList = questions[0]; // to jest cały zerowy obiekt z listy czyli pytanie i odpowiedzi


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
          /*
          currentQuestionFromList to pierwszy obiekt z listy questions (zerow) czyli oytanie i odpowiedzi
          currentQuestionFromList.answers <- to jest lista odpowiedzi do pierwszego pytania
          map przechodzi przez obiekty na liscie i wykonuje funkcje a kazdym z obiektow
          item to obiekt listy na którym wywoływana jest funkcja
          map to taki foeEach
          ta fnkcja zwraca liste widzetow ale w tym drzewie layout mamy children ktore przyjmuje
          widzety a nie listy widzetow dlatego musimy dokonac spreadu tej listy i
          to sa te trzy kropki   ...
          kropki powoduja ze lista jest rozpakowywana  w tym miejscu gdzie powstaje nie
          mamy wiec listy a widzety i dlatego mozemy sie pozbyc listy przyciskow z zafiksowana
          iloscia przyciskow
          a zamiast tego bedzie sie generowac lista buttonow w zaleznosci o d ilosci odpowiedzi
          */
          ...currentQuestionFromList.answers.map((answersFromAnswersList) {
              return AnswerButton(answerText: answersFromAnswersList, onTap: (){});

          })


          // AnswerButton(answerText: currentQuestionFromList.answers[0], onTap: (){}),
          // AnswerButton(answerText: currentQuestionFromList.answers[1], onTap: (){}),
          // AnswerButton(answerText: currentQuestionFromList.answers[2], onTap: (){}),
          // AnswerButton(answerText: currentQuestionFromList.answers[3], onTap: (){}),

        ],
      ),
    );
  }
}
