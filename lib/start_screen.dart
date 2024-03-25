// import 'package:flutter/material.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({
//     super.key,
//   });

//   @override
//   Widget build(context) {
//     return const Column(
//       children: [
//         Text('Hey'),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(context) {
//     return Center(
//       child: Column(
//         children: [
//           Image.asset('assets/images/quiz.png'),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Opacity(
//               opacity: 1,
//               child: Image.asset('assets/images/quiz.png', width: 300)),
//           const SizedBox(
//             height: 50,
//           ),
//           const Text(
//             'Quiz App',
//             style: TextStyle(
//               color: Color.fromARGB(255, 255, 255, 255),
//             ),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           OutlinedButton.icon(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(
//               foregroundColor: const Color.fromARGB(255, 255, 255, 255),
//             ),
//             icon: const Icon(Icons.arrow_right_outlined),
//             label: const Text("Start Quiz"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/quiz.png'),
        const SizedBox(height: 50),
        const Text(
          "Quiz",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          ),
          icon: const Icon(Icons.arrow_right_outlined),
          label: const Text('Quiz'),
        ),
      ]),
    );
  }
}
