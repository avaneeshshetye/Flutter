import 'package:flutter/material.dart';
import 'package:quiz/dart/questions.dart';
import 'package:quiz/questions_summary.dart';

class resultsScreen extends StatelessWidget {
  const resultsScreen(
      {super.key, required this.chosenAnswers, required this.returnToQuiz});
  final void Function() returnToQuiz;

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext build) {
    final summaryData = getSummaryData();
    final totalNumberQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'You answered $numCorrectQuestions correctly out of $totalNumberQuestions '),
                const SizedBox(height: 20),
                QuestionsSummary(getSummaryData()),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: returnToQuiz,
                  child: const Text('Re-start Quiz'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
