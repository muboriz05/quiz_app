import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '/models/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 1000),
          const Text(
            'Your Score: ',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
          CircularPercentIndicator(
            radius: 150.0,
            progressColor: Colors.green,
            backgroundColor: Colors.white,
            lineWidth: 15.0,
            animation: true,
            animationDuration: 1500,
            circularStrokeCap: CircularStrokeCap.round,
            percent: score / questions.length,
            center: Text("$score",
                style:
                    const TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
