import 'package:flutter/material.dart';
import 'package:quiz_app/dummydb.dart';
import 'package:quiz_app/utils/constants/colorConstatns.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/views/resultScreen/resultScreen.dart';
import 'package:quiz_app/views/widgets/optionCard.dart';

class PythonScreen extends StatefulWidget {
  const PythonScreen({super.key});

  @override
  State<PythonScreen> createState() => _PythonScreenState();
}

class _PythonScreenState extends State<PythonScreen> {
   List<int> _skippedQuestions = [];
  int _currentIndex = 0;
  List<bool> _isSelected = [false, false, false, false];
  String? _selectedAnswer;
  int _correctAnswers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 100,
                      //animation: true,
                      lineHeight: 13.0,
                      percent: (_currentIndex + 1) / PythonDB.questions.length,
                      barRadius: Radius.circular(10),
                      progressColor: Colors.orange,
                    ),
                    Text(
                      ' ${_currentIndex + 1} / ${PythonDB.questions.length}',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                //height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    PythonDB.questions[_currentIndex]['question'].toString(),
                    style: TextStyle(fontSize: 20, color: AppColors.textColor),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  ...List.generate(4, (index) {
                    List options =
                        PythonDB.questions[_currentIndex]['options'] as List;
                    return optionCard(
                      optionText: options[index],
                      isSelected: _isSelected[index],
                      onTap: () {
                        setState(() {
                          for (int i = 0; i < 4; i++) {
                            if (i == index) {
                              _isSelected[i] = true;
                              _selectedAnswer = options[index];
                            } else {
                              _isSelected[i] = false;
                            }
                          }
                          _checkAnswer(index);
                        });
                      },
                      isCorrect: _selectedAnswer != null &&
                          _selectedAnswer == options[index] &&
                          index ==
                              (PythonDB.questions[_currentIndex]['correctanswer']
                                      as int) -
                                  1,
                    );
                  }),
                ],
              ),
              SizedBox(
                height: 10,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if (_currentIndex > 0) {
                        goToPreviousQuestion();
                      }
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Prev',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (_currentIndex < DartDB.questions.length - 1) {
                        goToNextQuestion();
                      } else {
                        // Stop the quiz and display the results
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                    skippedQuestions: _skippedQuestions,totalQuestions: PythonDB.questions.length,correctAnswers: _correctAnswers,
                                  )),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          _currentIndex < DartDB.questions.length - 1
                              ? 'Next'
                              : 'Submit',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
void goToPreviousQuestion() {
  setState(() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _isSelected = [false, false, false, false];
      _selectedAnswer = null;
    }
  });
}
  void _checkAnswer(int selectedIndex) {
    dynamic correctAnswerIndex =
        PythonDB.questions[_currentIndex]['correctanswer'];
    if (correctAnswerIndex is int) {
      if (selectedIndex == correctAnswerIndex - 1) {
        print('Correct answer!');
        setState(() {
          _correctAnswers++; // Increment correct answers
        });
      } else {
        print('Incorrect answer!');
      }
    } else if (correctAnswerIndex is List<int>) {
      if (correctAnswerIndex.contains(selectedIndex + 1)) {
        print('Correct answer!');
        setState(() {
          _correctAnswers++; // Increment correct answers
        });
      } else {
        print('Incorrect answer!');
      }
    }
  }

 void goToNextQuestion() {
    setState(() {
      if (_currentIndex < PythonDB.questions.length - 1) {
      if (_selectedAnswer == null) {
        _skippedQuestions.add(_currentIndex);
      }
      _currentIndex++;
      _isSelected = [false, false, false, false];
      _selectedAnswer = null;
    } else {
        // Display a message or a screen that says "Quiz completed!"
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ResultScreen(skippedQuestions: _skippedQuestions,totalQuestions: PythonDB.questions.length,correctAnswers: _correctAnswers,)),
        );
      }
    });
  }
}

