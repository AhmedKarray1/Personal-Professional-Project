import "package:flutter/material.dart";
import "package:ppp/data/questions.dart";
import "package:ppp/home_screen.dart";
import "package:ppp/questions_screen.dart";
import "package:ppp/results_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "home-screen";

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
      if (screen == "home-screen") selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 64, 11, 113),
          ),
          child: activeScreen == "home-screen"
              ? HomeScreen(switchScreen)
              : activeScreen == "results-screen"
                  ? ResultsScreen(switchScreen, selectedAnswers)
                  : QuestionsScreen(chooseAnswer),
        ),
      ),
    );
  }
}
