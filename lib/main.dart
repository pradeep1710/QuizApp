import 'package:flutter/material.dart';
import './quiz_page.dart';
import './start_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool start = false;
  startQuiz() {
    setState(() {
      start = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: !start ? StartPage(startQuiz) : const QuizApp());
  }
}
