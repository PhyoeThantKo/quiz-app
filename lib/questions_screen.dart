import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_practice/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Questions !!!!",
            style: GoogleFonts.amiko(fontSize: 30, color: Colors.white),
          ),
          SizedBox(height: 20),
          AnswerButton("Answer 1", () {}),
          AnswerButton("Answer 2", () {}),
          AnswerButton("Answer 3", () {}),
        ],
      ),
    );
  }
}
