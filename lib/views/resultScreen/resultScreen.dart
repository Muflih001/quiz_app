import 'package:flutter/material.dart';

import 'package:quiz_app/utils/constants/colorConstatns.dart';
import 'package:quiz_app/views/selectionScreen/selectionScreen.dart';

class ResultScreen extends StatelessWidget {
  //final int correctAnswers;

  ResultScreen(
      {required this.totalQuestions,
      required this.correctAnswers,
      required this.skippedQuestions});
  final int totalQuestions;
  final int correctAnswers;
  final List<int> skippedQuestions;
  @override
  Widget build(BuildContext context) {
    int incorrectAnswers =
        totalQuestions - correctAnswers - skippedQuestions.length;
    double percentage = (correctAnswers / totalQuestions) * 100;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Congrats!',
              style: TextStyle(fontSize: 28, color: AppColors.textColor),
            ),
            Text(
              '${percentage.toStringAsFixed(2)}%score',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Correct Answer: $correctAnswers',
              style: TextStyle(fontSize: 16, color: AppColors.textColor),
            ),
            Text(
              'Wrong Answer: $incorrectAnswers',
              style: TextStyle(fontSize: 16, color: AppColors.textColor),
            ),
            Text(
              'Skipped Questions: ${skippedQuestions.length}',
              style: TextStyle(fontSize: 16, color: AppColors.textColor),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectionScreen(),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
              child: Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
                child: Center(
                  child: Text(
                    'Restart',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
