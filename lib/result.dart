import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String result;
    if (resultScore <= 11) {
      result = "Score: $resultScore You're pretty normal. :)";
    } else if (resultScore >= 12 && resultScore <= 15) {
      result = "Score: $resultScore Great! You've got good taste";
    } else {
      result = "Score: $resultScore Awesome! You have an amazing personality!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
          Text("You made it!\n $resultPhrase",
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center
        ),
        TextButton(onPressed: resetHandler,
          child: const Text('Restart Quiz', style: TextStyle(
            fontSize: 36, fontWeight: FontWeight.w500, color: Colors.blueGrey),
          ),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
          ),
        ],
      ),
    );
  }
}
