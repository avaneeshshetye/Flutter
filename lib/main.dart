// import 'package:flutter/material.dart';
// import 'package:quiz/gradient.dart';
// import 'package:quiz/start_screen.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.purpleAccent,
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Color.fromARGB(255, 78, 13, 151),
//               Color.fromARGB(255, 88, 51, 131)
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           ),
//           child: const Center(child: StartScreen()),
//         ),
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:quiz/start_screen.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Color.fromARGB(255, 78, 13, 151),
//               Color.fromARGB(255, 88, 51, 131),
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           ),
//           child: const StartScreen(),
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/quiz.dart';

main() {
  runApp(const Quiz());
}
