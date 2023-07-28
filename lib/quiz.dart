import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {
  List <String> selectedAnswers = [];
  var activeScreen = 'start-screen'; // TEN STRING TO JEST JAKIS TYTUL NOWEGO EKRANU
  // ZMIENA ACTIVEsCREN TO JEST AKTUALNIE WYSWIETLANY EKRAN

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }



  void addChoosenAnswerToTheList(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
/*
UWGAGAGAGAG !!!!
na ekranie jest screenwidget i to on jest podmieniany w zaleznosci od wartosci stringa
ten plik to jkais controler aplikacji i zarzadza co jest wyswietlane na ekranie
TZN CZYM BEDZIE WYSWIETLANY --> screenWidget
 */


    if (activeScreen == 'question-screen') {
      // to jest podmienianie zawartosci ekranu na podstwaie tego stringa (FLAGI)  'question-screen')
      screenWidget = QuestionScreen(onSelectAnswer: addChoosenAnswerToTheList,);
    };


    if (activeScreen == 'results-screen') {
        screenWidget =  ResultsScreen( chosenAnswer: selectedAnswers,);
    }


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