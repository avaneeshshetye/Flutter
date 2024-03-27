// import 'package:flutter/material.dart';
// import 'package:quiz/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Color.fromARGB(255, 15, 46, 223),
//               Color.fromARGB(255, 63, 9, 42),
//             ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
//           ),
//           child: const StartScreen(),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz/questions_Screen.dart';
import 'package:quiz/results.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/dart/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // var activeScreen = 'start-screen';

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = 'questions-screen';
  //   });
  // }

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  var activeScreen;
  final List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void selectedAnswer(String answers) {
    selectedAnswers.add(answers);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void toQuiz() {
    setState(() {
      activeScreen = 'start-screen';
      final selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget screenWidget = StartScreen(switchScreen);

    // if (activeScreen == 'questions-screen') {
    //   screenWidget = const QuestionsScreen();
    // }

    // final screenWidget = activeScreen == 'start-screen'
    //    ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        AnswerFunction: selectedAnswer,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = resultsScreen(
        chosenAnswers: selectedAnswers,
        returnToQuiz: toQuiz,
      );
    }
    if (activeScreen == 'startScreen') {
      final selectedAnswers = [];
      screenWidget = StartScreen(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 68, 8, 83),
              Color.fromARGB(255, 89, 54, 9),
            ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
          ),
          // child:
          child: screenWidget,
          // activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
