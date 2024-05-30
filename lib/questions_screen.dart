import 'package:flutter/material.dart';
import 'package:ppp/answer_button.dart';
import "package:ppp/data/questions.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(41),
        child: Column(
          key: const Key("questions-column"),
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 31,
            ),
            for (var i = 0; i < currentQuestion.getShuffledAnswers().length; i++)
              AnswerButton(
                currentQuestion.getShuffledAnswers()[i],
                () {
                  answerQuestion(
                    currentQuestion.getShuffledAnswers()[i],
                  );
                },
                key: ValueKey(
                  i.toString(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
