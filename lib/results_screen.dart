import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
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
