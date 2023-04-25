
import 'package:flutter/material.dart';
/*import './question.dart';
import './answer.dart';*/
import './quiz.dart';
import './result.dart';
/*void main(){
  runApp(MyApp());
}*/
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({super.key});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final _questions = const [
    {
      "question": "What's your favorite color?",
      "answers": [
        {'text' :"Red", 'score': 5},
        {'text' :"Black", 'score': 4},
        {'text' :"Grey", 'score': 3},
        {'text' :"Orange", 'score': 4},
        {'text' :"White", 'score': 2},
        {'text' :"Olive Green", 'score': 3}
      ]
    },
    {
      "question":"What's your favorite animal?",
      "answers": [
        {'text' :"Dog", 'score': 4},
        {'text' :"Cat", 'score': 2},
        {'text' :"Jaguar", 'score': 3},
        {'text' :"Wolf", 'score': 4}
      ]
    },
    {
      "question":"Who's your favorite instructor?",
      "answers": [
        {'text' :"God", 'score': 4},
        {'text' :"Nadia Hylary", 'score': 4},
        {'text' :"Maximillian Schwarz", 'score': 3},
        {'text' :"Dr Angelou", 'score': 3}
      ]
    },
    {
      "question":"What's the favorite city you dream to visit?",
      "answers": [
        {'text' :"New York", 'score': 4},
        {"text": "Berlin", 'score': 2},
        {'text': "Tokyo", 'score': 4},
        {'text': "Budapest", 'score': 3},
        {"text": "Hong Kong", "score":4},
        {"text": "Atlanta", "score": 3}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score){

    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length){
      print("We have more qs $_questionIndex");
    }
    //print("Answer chosen!");

  }

  @override
  Widget build(BuildContext context) {

    //print(questions[0]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("NH's Personality Quiz app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions:  _questions,
                answerQuestion : _answerQuestion,
                questionIndex : _questionIndex
                )
            : Result(_totalScore),
      ),
    );

  }
}