import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo-icon1.png',
            width: 400,
            height: 400,
          ),
          Text(
            'Play. Learn. Win.',
            style: GoogleFonts.bungee(
              color: const Color.fromARGB(205, 32, 32, 31),
              fontSize: 26,
              shadows: const [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black12,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(242, 2, 73, 120),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 8,
              shadowColor: Colors.deepOrange.shade200,
            ),
            icon: const Icon(Icons.arrow_forward, size: 24),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
