import 'package:flutter/material.dart';
import 'package:quiz_app_practice/data/questions.dart';
import 'package:quiz_app_practice/results_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({
    super.key,
    required this.selectedAnswers,
    required this.onRestart,
  });

  final List<String> selectedAnswers;
  void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectAnswers out of $numQuestions questions correctly",
            ),
            SizedBox(height: 30),
            ResultsSummary(summaryData),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onRestart,
              icon: Icon(Icons.refresh),
              label: Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
