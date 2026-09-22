import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(80, 255, 255, 255),
          ),
          SizedBox(height: 30),
          Text(
            "Learn Flutter the Fun Way!",
            style: GoogleFonts.adventPro(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 30),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt_rounded),
            label: Text("Start Quiz", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
