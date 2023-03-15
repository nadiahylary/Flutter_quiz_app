import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore, {super.key});

  String get resultPhrase{
    String result;
    if (resultScore <= 15){
      result = "You're pretty normal. :)";
    }else if(resultScore >= 18 && resultScore <= 22){
      result = "Great! You've got good taste";
    }else{
      result = "Awesome! You have an amazing personality!";
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