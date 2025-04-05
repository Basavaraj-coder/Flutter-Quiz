import 'package:flutter/material.dart';
import 'package:flutter_quiz/Screens/Quiz.dart';
import 'package:flutter_quiz/Screens/Quiz_QuestionScreen.dart';
import 'package:flutter_quiz/reusable/Question_Ans_Container.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, this.chosenAnswers});

  final List<String>? chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QuestionAnsContainer(
            resultScreenLabel: "ResultScreen", chosenAnswers: chosenAnswers),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Quiz()));

            },
            child: const Text("Restart Quiz"))
      ],
    );
  }
}
