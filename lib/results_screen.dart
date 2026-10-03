import 'package:flutter/material.dart';
import 'package:quiz_app_practice/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i],
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered X out of Y questions correctly You answered X out of Y questions correctly You answered X out of Y questions correctly",
            ),
            SizedBox(height: 30),
            Text("Hello World"),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.refresh),
              label: Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
