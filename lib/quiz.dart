import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
  return _QuizState();
  }
}



class _QuizState extends State<Quiz>{
  Widget? activeScreen;

  @override
  void initState(){
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }


  void switchScreen(){
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }


  @override
  Widget build( context) {
    return   MaterialApp(
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
          child:  activeScreen,
        ),
      ),
    );

  }

}