import 'package:flutter/material.dart';
import 'package:flutter_quiz/DataSource/datasource.dart';
import 'package:flutter_quiz/Screens/FirstScreen.dart';
import 'package:flutter_quiz/models/QuizQuestion.dart';
import 'package:flutter_quiz/reusable/Fonts.dart';
import 'package:flutter_quiz/reusable/container_colors.dart';

import '../Screens/Quiz_QuestionScreen.dart';

class QuestionAnsContainer extends StatelessWidget {
  QuizQuestion? item;
  String? resultScreenLabel;
  List<String>? chosenAnswers;
  final void Function(String answer)?
      onAnswerSelected; // Add callback function which accepts answer as param

  QuestionAnsContainer(
      {super.key,
      this.item,
      this.onAnswerSelected,
      this.resultScreenLabel,
      this.chosenAnswers});

  List<Map<String, Object>> getResultSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers!.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'Answer_byuser': chosenAnswers![i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? ResultSummary;
    if (chosenAnswers != null) {
      ResultSummary = getResultSummary();
    }
    return SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: ContainerColors.c,
              )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (item != null)
                  Text(
                    item!.question,
                    style: TextFonts.questionFontStyle,
                  ),
                SizedBox(
                  height: 50,
                ),

                //spread operator is used to unpack elements from other list
                if (item != null)
                  ...item!
                      .getShuffledAnswers()!
                      .map((individual_answer) => Container(
                          //added container for margin to buttons
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: FirstscreenContainer(
                            Btnlabel: "Answer",
                            text: individual_answer,
                            onTapAnswerButton: () => onAnswerSelected!(
                                individual_answer), // Call function on tap,))
                          ))),
                if (resultScreenLabel != null)
                  SizedBox(
                    height: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: ResultSummary!.map((data) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ((data["question_index"] as int) + 1).toString(),
                                style: TextFonts.resultFontStyle,
                              ),
                              Expanded(
                                child: Column(children: [
                                  Text(
                                    (data["question"] as String),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      ('Your Answer : ${data["Answer_byuser"] as String}'),
                                      style: TextStyle(color: Colors.pinkAccent)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      ('Correct Answer : ${data["correct_answer"] as String}'),
                                      style: TextStyle(color: Colors.white)),
                                ]),
                              )
                            ],
                          );
                        }).toList(),
                        // [
                        //
                        //   const Text("You answered X out of Y"),
                        //   SizedBox(
                        //     height: 30,
                        //   ),
                        //   Text("List of answers and questions "),
                        //   SizedBox(
                        //     height: 30,
                        //   ),
                        //   TextButton(
                        //       onPressed: () {
                        //         QuizQuestionscreen();
                        //       },
                        //       child: const Text("Restart Quiz")),
                        //
                        //   Text("text1"),
                        //   Text("text1"),
                        //   Text("text1"),
                        //   Text("text1"),
                        // ],
                      ),
                    ),
                  )
                /**
                    // no need to create a manually button many times just use above code from list of answer
                    // using spread operator we will fetch each answer as sep element and pass it to widget container
                    // FirstscreenContainer(
                    //   Btnlabel: "Answer",
                    //   text: item!.answers[0],
                    //   onTapAnswerButton: () {},
                    // ),
                    // FirstscreenContainer(
                    //   Btnlabel: "Answer",
                    //   text: item!.answers[1],
                    //   onTapAnswerButton: () {},
                    // ),
                    // FirstscreenContainer(
                    //   Btnlabel: "Answer",
                    //   text: item!.answers[2],
                    //   onTapAnswerButton: () {},
                    // ),
                    // FirstscreenContainer(
                    //   Btnlabel: "Answer",
                    //   text: item!.answers[3],
                    //   onTapAnswerButton: () {
                    //     print("Clicked 4th option answer");
                    //   },
                    // ),
                    // CustomButton(text: "Answer 1", onPressed: (){}),

                    // CustomButton(text: "Answer 2", onPressed: (){}),
                    // CustomButton(text: "Answer 3", onPressed: (){}),
                    // CustomButton(text: "Answer 4", onPressed: (){}),**/
              ],
            ),
          ),
        ));
  }
}
