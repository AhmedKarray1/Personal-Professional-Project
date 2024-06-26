import 'package:flutter/material.dart';
import 'package:ppp/data/questions.dart';
import 'package:ppp/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.switchScreen, this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;
  final void Function(String) switchScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = summaryData.length;
    final numCorrectQuestions = summaryData.where(
      (element) {
        return element["user_answer"] == element["correct_answer"];
      },
    ).length;

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              key: const Key("restart-quiz-button"),
              onPressed: () {
                switchScreen("home-screen");
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white70,
              ),
              icon: const Icon(Icons.restart_alt_rounded),
              label: const Text("Restart Quiz!"),
            ),
          ],
        ),
      ),
    );
  }
}
