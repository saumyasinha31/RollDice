import 'package:flutter/material.dart';
import 'package:quizz_mania/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:quizz_mania/data/questions.dart';
import 'package:quizz_mania/data/questions.dart';
import 'package:quizz_mania/data/questions.dart';
class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context){
    final questionNumber = questionIndex +1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 153, 242, 153)
            :  const Color.fromARGB(255, 230, 149, 163),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,

        )
      ),
    );
  }
}