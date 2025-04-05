import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/QuizQuestion.dart';
import 'package:flutter_quiz/reusable/Fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reusable/container_colors.dart';

// class FirstScreen extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     return FirstscreenContainer();
//   }
//
// }

class FirstscreenContainer extends StatelessWidget {
  final String? img;
  final String? text;
  final String? Btnlabel;
  final void Function()? onTapAnswerButton;
  final VoidCallback? startQuizPress; // Callback function

  FirstscreenContainer(
      {this.img, this.text, this.Btnlabel, this.startQuizPress, this.onTapAnswerButton});

  @override
  Widget build(BuildContext context) {
    bool containsAnswer =
        Btnlabel != null && Btnlabel!.toLowerCase().contains("answer");
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          // margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: ContainerColors.c,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (img != null)
              //now here i want to change the transparency of image using opacity
              //   now adding opacity is quit performance intensive, u should avoid Opacity()
              // instead use color.argb(a:opacity)
                Image(
                  image: AssetImage(
                    img!,
                  ),
                  width: 400,
                ),
              if (text != null)
              //   now if you want to add icon to button u have extra constructor i.e icon
              //   hence child will no longer child, you have to change it to label
                containsAnswer
                    ? SizedBox(
                  // width: double.infinity,
                  width: 500,
                  child: OutlinedButton(
                    onPressed:onTapAnswerButton,
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2, color: Colors.pink),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      text!,
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.pinkAccent
                      )
                    ),
                  ),
                )
                    : OutlinedButton.icon(
                    onPressed: startQuizPress,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.pink),
                      padding: EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12), // More padding
                    ),
                    icon: const Icon(
                      Icons.start,
                      color: Colors.pinkAccent,
                    ),
                    label: Text(
                      text!,
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 22,
                      ),
                    )),
              //
            ],
          ),
        ),
      ),
    );
  }
}
