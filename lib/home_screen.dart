import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function(String screen) startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
            color: const Color.fromARGB(153, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz("questions-screen");
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white70,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
            ),
          )
        ],
      ),
    );
  }
}
