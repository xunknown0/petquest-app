import 'package:flutter/material.dart';
import 'package:pet_quest/start_screen.dart';

class PetQuiz extends StatefulWidget {
  const PetQuiz({super.key});

  @override
  State<PetQuiz> createState() {
    return _PetQuizStart();
  }
}

class _PetQuizStart extends State<PetQuiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 109, 20),
              Color.fromARGB(20, 211, 253, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
