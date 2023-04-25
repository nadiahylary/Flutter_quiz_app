import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore, {super.key});

  String get resultPhrase{
    String result;
    if (resultScore <= 11){
      result = "Score: $resultScore You're pretty normal. :)";
    }else if(resultScore >= 13 && resultScore <= 18){
      result = "Score: $resultScore Great! You've got good taste";
    }else{
      result = "Score: $resultScore Awesome! You have an amazing personality!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("You made it!\n $resultPhrase",
          style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold),
          textAlign: TextAlign.center
        ),

    );
  }
}