import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz/Screens/Quiz.dart';
import 'package:flutter_quiz/Screens/FirstScreen.dart';
import 'package:flutter_quiz/reusable/Fonts.dart';
import 'package:flutter_quiz/reusable/container_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // If _startQuiz(context) needs a parameter → Always use ()=>
  void _startQuiz(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz()));
    print("Print Started Quiz");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FirstscreenContainer(
              img: "assets/images/brain.png",
            ),
            Text(
              "Learn Flutter the fun way!",
              style: TextFonts.StartScreenFontsSize,
            ),
            FirstscreenContainer(
              text: "Start Quiz",
              startQuizPress: ()=>_startQuiz(context),
            )
          ],
        ),
      ),
    );
  }
}

