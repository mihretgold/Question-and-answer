import 'package:flutter/material.dart';

class HomePageContainer extends StatefulWidget {
  const HomePageContainer({super.key});

  @override
  State<HomePageContainer> createState() {
    return _HomePageContainerState();
  }
}

class _HomePageContainerState extends State<HomePageContainer> {
  void run() {}
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //   opacity: 0.6,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(101, 250, 249, 249),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
            style: TextStyle(color: Colors.white, fontSize: 24),
            'Learn Flutter the fun way!'),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: run,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
