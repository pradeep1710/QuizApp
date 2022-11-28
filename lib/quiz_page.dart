import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
import './score.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map<String, Object>> question = ([
    {
      'ques': "who is the Prime Minister of India?",
      'options': ['Sonia Gandhi', 'Amit shah', 'Narender Modi', 'Rahul Gandhi'],
      'ans': 'Narender Modi'
    },
    {
      'ques': "what is the color of ₹20 Note",
      'options': ['Light Brown', 'Teal', 'Pink', 'Yellow'],
      'ans': 'Yellow'
    },
    {
      'ques': "Position of Earth in our Solar system?",
      'options': ['First', 'Second', 'Third', 'Fourth'],
      'ans': 'Third'
    },
    {
      'ques': "When did India got independence",
      'options': ['1947', '1984', '1950', '1999'],
      'ans': '1947'
    },
  ]);

  bool initial = false;
  random() {
    if (initial == false) {
      question.shuffle();
      for (Map item in question) {
        (item['options'] as List).shuffle();
      }
      initial = true;
    }
  }

  int questionIndex = 0;
  List quizScore = [0, 0];

  void addPoint() {
    quizScore[0] += 1;
  }

  changeQuestion() {
    setState(() {
      questionIndex += 1;
      quizScore[1] += 1;
    });
  }

  restart() {
    setState(() {
    questionIndex = 0;
    quizScore = [0,0];
    });
  }

  @override
  Widget build(BuildContext context) {
    random();
    return Scaffold(
        // backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 80,
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            title: const Text(
              'Quiz Contest',
              style: TextStyle(fontSize: 30),
            ),
            backgroundColor: Colors.deepPurple[200]),
        body: (questionIndex < question.length)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Question(question[questionIndex]['ques'] as String),
                  Answer(
                      ans: question[questionIndex]['ans'] as String,
                      addPoint: addPoint,
                      changeQuestion: changeQuestion,
                      options: question[questionIndex]['options'] as List)
                ],
              )
            : Score(
                restart: restart,
                quizScore: quizScore,
              ));
  }
}
