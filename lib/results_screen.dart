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
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      },
      );
    }
     return summary;
  }

  @override
  Widget build(context) {
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
            const Text('You have answered X out of Y questions correctly'),
            const SizedBox(height: 30,),
            const Text("List of answers and questions"),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: getSummaryData()),
            TextButton(onPressed: (){
            },
                child: const Text("Restart quiz"))


          ],
        ),
      ),
    );
  }
}
