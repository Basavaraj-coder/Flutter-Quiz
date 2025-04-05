class QuizQuestion{

  final String question;
  final List<String> answers;

 const QuizQuestion({required this.question, required this.answers});

 List<String>? getShuffledAnswers(){
   // List<String> shuffledAnswers = answers; this only changes the reference name but list is same
   final List<String> shuffledAnswers = List.of(answers); //create new copy of original list
   shuffledAnswers.shuffle();//hence only new list/copied list will be shuffled, it will not reflect to original list
   return shuffledAnswers;
 }
}