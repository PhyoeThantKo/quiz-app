import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_practice/answer_button.dart';
import 'package:quiz_app_practice/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.amiko(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 20),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answer, () {});
          }),
        ],
      ),
    );
  }
}
