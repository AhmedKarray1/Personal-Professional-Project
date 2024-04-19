import 'package:flutter/material.dart';
import 'package:ppp/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.summaryInfo, {super.key});

  final Map<String, Object> summaryInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              summaryInfo["question_index"] as int, summaryInfo["user_answer"] == summaryInfo["correct_answer"]),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summaryInfo["question"] as String,
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  summaryInfo["user_answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 237, 48, 205),
                  ),
                ),
                Text(
                  summaryInfo["correct_answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 76, 96, 225),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
