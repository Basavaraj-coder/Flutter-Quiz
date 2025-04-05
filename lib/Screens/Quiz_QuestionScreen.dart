import 'package:flutter/material.dart';

import 'package:flutter_quiz/models/QuizQuestion.dart';
import 'package:flutter_quiz/reusable/Question_Ans_Container.dart';
import 'package:flutter_quiz/reusable/container_colors.dart';
import 'package:flutter_quiz/DataSource/datasource.dart';

class QuizQuestionscreen extends StatefulWidget {
  final void Function(String answer)? onSelectAnswer;

  const QuizQuestionscreen({
    super.key,
    this.onSelectAnswer,
  });

  @override
  State<QuizQuestionscreen> createState() => _QuizQuestionscreenState();
}

class _QuizQuestionscreenState extends State<QuizQuestionscreen> {
  var currentQuestionNumber = 0;

  void _answeredQuestion(String selectedAnswer) {
    widget.onSelectAnswer!(selectedAnswer);
    setState(() {
      if (currentQuestionNumber < questions.length) {
        currentQuestionNumber += 1;
      } else {
        currentQuestionNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionNumber];
    return Scaffold(
        body: QuestionAnsContainer(
      item: currentQuestion,
      onAnswerSelected:_answeredQuestion,
    ));
  }
}

/*
* Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: ContainerColors.c,
                  )
              ),
              child: Text("inside question screen"),
            )
* */
