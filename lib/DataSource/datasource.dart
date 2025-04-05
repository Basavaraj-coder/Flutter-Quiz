import 'package:flutter_quiz/models/QuizQuestion.dart';

List<QuizQuestion> questions = [
  QuizQuestion(question:"What are the main building blocks of flutter",
      answers: [
        "Widgets",
        "Components",
        "State",
        "Functions"
      ]),
  QuizQuestion(
    question: "What language is used to write Flutter apps?",
    answers: [
      "Dart",
      "Java",
      "Swift",
      "Python"
    ],
  ),
  QuizQuestion(
    question: "Which widget is used to create UI in Flutter?",
    answers: [
      "Widget",
      "Component",
      "Fragment",
      "View"
    ],
  ),QuizQuestion(
    question: "Which widget is used to create a scrollable list in Flutter?",
    answers: [
      "ListView",
      "Column",
      "Stack",
      "GridView"
    ],
  ),
  QuizQuestion(
    question: "What is the use of function ‘setState’ in Flutter?",
    answers: [
      "Updates UI when state changes",
      "Defines a new state",
      "Destroys a widget",
      "Fetches data from API"
    ],
  ),
  QuizQuestion(
    question: "Which widget is used for handling user gestures in Flutter?",
    answers: [
      "GestureDetector",
      "InkWell",
      "ElevatedButton",
      "Container"
    ],
  ),
  QuizQuestion(
    question: "Which widget helps in creating adaptive layouts?",
    answers: [
      "MediaQuery",
      "Column",
      "Row",
      "Padding"
    ],
  ),
  QuizQuestion(
    question: "Which package is commonly used for state management in Flutter?",
    answers: [
      "Provider",
      "Dio",
      "Flutter Secure Storage",
      "SharedPreferences"
    ],
  ),
  QuizQuestion(
    question: "Which command is used to create a new Flutter project?",
    answers: [
      "flutter create project_name",
      "flutter start project_name",
      "flutter init project_name",
      "flutter new project_name"
    ],
  ),
  QuizQuestion(
    question: "Which widget is used to create an app bar in Flutter?",
    answers: [
      "AppBar",
      "NavigationBar",
      "Scaffold",
      "Toolbar"
    ],
  ),
  QuizQuestion(
    question: "What does the `BuildContext` represent in Flutter?",
    answers: [
      "Location of a widget in the widget tree",
      "The UI theme",
      "A stateful function",
      "A static method"
    ],
  ),
  QuizQuestion(
    question: "Which lifecycle method is called when a StatefulWidget is first inserted in the widget tree?",
    answers: [
      "initState",
      "build",
      "dispose",
      "setState"
    ],
  ),
  QuizQuestion(
    question: "Which tool is used for debugging in Flutter?",
    answers: [
      "Flutter DevTools",
      "Android Profiler",
      "Xcode Instruments",
      "Redux DevTools"
    ],
  ),
  QuizQuestion(
    question: "Which widget is used to create a flexible UI layout?",
    answers: [
      "Flexible",
      "Expanded",
      "Positioned",
      "SizedBox"
    ],
  ),
  QuizQuestion(
    question: "How do you make an API call in Flutter?",
    answers: [
      "Using the http package",
      "Using Firebase",
      "Using WebView",
      "Using Isolates"
    ],
  ),
]; //list of question created by QuizQuestion class