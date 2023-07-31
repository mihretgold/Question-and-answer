import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/gradient_container.dart';
import 'package:adv_basics/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'gradient-container';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget gradientWidget = GradientContainer(switchScreen);

    if (activeScreen == 'questions-screen') {
      gradientWidget = QuestionsScreen(chooseAnswer);
    }

    if (activeScreen == "result-screen") {
      gradientWidget = ResultsScreen(selectedAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 79, 27, 169),
              Color.fromARGB(255, 54, 6, 137)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: gradientWidget,
        ),
      ),
    );
  }
}
