import "package:flutter/material.dart";
import "package:ppp/data/questions.dart";

import "home_screen.dart";
import "questions_screen.dart";
import "results_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
