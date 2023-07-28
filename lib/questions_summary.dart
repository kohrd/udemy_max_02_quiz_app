import 'package:flutter/cupertino.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            // data to jest jakies i ktory wyciagamy z sumaryObject i robimy na nim funkcję
            return Row(children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 5),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
