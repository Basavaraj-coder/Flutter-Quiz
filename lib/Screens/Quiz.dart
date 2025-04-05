import 'package:flutter/material.dart';
import 'package:flutter_quiz/MainScreen.dart';
import 'package:flutter_quiz/Screens/Quiz_QuestionScreen.dart';
import 'package:flutter_quiz/Screens/FirstScreen.dart';
import 'package:flutter_quiz/DataSource/datasource.dart';
import 'package:flutter_quiz/Screens/ResultScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // a variable can store widget aswell, it's not limited to store only numeric and string values
  late var activeScreen; // & widget can also be stored, but the type should Widget
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = "Quiz";
    switchScreen();
    super.initState();
  }

  void switchScreen() {
    setState(() {

      activeScreen = "QuizQuestionScreen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        // print(selectedAnswers.length);
        activeScreen = "resultscreen";
        // selectedAnswers=[];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentActiveScreen = switch (activeScreen) {
      "Quiz" => const Quiz(),
      "QuizQuestionScreen" => QuizQuestionscreen(onSelectAnswer: chooseAnswer),
      "mainscreen" => MainScreen(),
      "resultscreen"=> Resultscreen(chosenAnswers: selectedAnswers,),
      _ => const Text("Error"), // Default case
    };
    return Scaffold(
      body: SafeArea(
        child:currentActiveScreen
      ),
    );
  }
}
// activeScreen == "Quiz"
// ? const Quiz()
//     : QuizQuestionscreen(onSelectAnswer: chooseAnswer,),