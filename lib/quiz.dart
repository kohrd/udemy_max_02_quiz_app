import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';   // TEN STRING TO JEST JAKIS TYTUL NOWEGO EKRANU
  // ZMIENA ACTIVEsCREN TO JEST AKTUALNIE WYSWIETLANY EKRAN

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
  List <String>  selectedAnswers = [];
  void addChoosenAnswerToTheList(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start-screen';
      });

    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget =  QuestionScreen(onSelectAnswer: addChoosenAnswerToTheList,);
      selectedAnswers = [];
    };

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    // Color.fromARGB(a, r, g, b),
                    Color.fromARGB(255, 55, 93, 119),
                    Color.fromARGB(105, 24, 36, 110)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight
              ),
            ),
            child: screenWidget,
        ),
      ),
    );
  }

}