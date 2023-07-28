import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen ({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List <Map<String, Object>> getSummaryData(){
    final List <Map<String, Object>> summary = [];

    for(var i=0; i < chosenAnswer.length; i++ ){
      // ttuaj tworzymy jakas pusta mape (slownik)
      summary.add({'question_index': i,
        'question': questions[i].text,   //   lista z pytaniami nazywa sie questions i posiada obiekty typu QuizQuestion()
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      },
      );
    }
     return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numberOfTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){  // dodaje do listy jsli return zwraca true
      return data['user_answer'] == data['correct_answer'];

    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        // potrzbujemy MARGIN a ten nalezy do cintainera
        margin: EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // wysrodkowuje zawarosc kolumny
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // rozciaga elementy w kolumnie w osi Cross
          children: [
             Text('You have answered $numCorrectQuestions out of $numberOfTotalQuestions questions correctly'),
            const SizedBox(height: 30,),
            const Text("List of answers and questions"),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            TextButton(onPressed: (){
            },
                child: const Text("Restart quiz"))


          ],
        ),
      ),
    );
  }
}
