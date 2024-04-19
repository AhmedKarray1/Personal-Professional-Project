import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.questionNumber, this.isCorrect, {super.key});

  final int questionNumber;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect ? const Color.fromARGB(255, 26, 118, 175) : const Color.fromARGB(255, 203, 37, 244),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text((questionNumber + 1).toString()),
    );
  }
}
