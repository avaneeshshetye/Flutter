// import 'package:flutter/material.dart';
// import 'package:quiz/answerButton.dart';
// import 'package:quiz/dart/questions.dart';

// class QuestionsScreen extends StatefulWidget {
//   const QuestionsScreen({Key? key});

//   @override
//   State<QuestionsScreen> createState() => _QuestionsScreenState();
// }

// class _QuestionsScreenState extends State<QuestionsScreen> {
//   var currentIndex = 0;

//   void answerQuestion() {
//     setState(() {
//       currentIndex++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currentQuestions = questions[currentIndex];
//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Center(child: Text(currentQuestions.text)),
//             const SizedBox(height: 30),
//             ...currentQuestions.shuffledList().map((answer) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: AnswerButton(text: answer, onTap: answerQuestion),
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz/answerButton.dart';
import 'package:quiz/dart/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.AnswerFunction});
  final void Function(String answer) AnswerFunction;

  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;

  void answerQuestion(String answer) {
    widget.AnswerFunction(answer);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];

    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          //width: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    currentQuestion.text,
                    // style: GoogleFonts.lato(
                    //   color: Colors.white,
                    //   fontSize: 24,
                    //   fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                ...currentQuestion.shuffledList().map((answer) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnswerButton(
                      text: answer,
                      onTap: () {
                        answerQuestion(answer);
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
