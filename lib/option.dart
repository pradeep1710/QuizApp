import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final VoidCallback addPoint;
  final String ans;
  final VoidCallback changeQuestion;
  final String option;
  const Option(
      {required this.addPoint,
      required this.ans,
      required this.changeQuestion,
      required this.option,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 200,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple[200],
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          onPressed: () {
            if (ans == option) {
              addPoint();
              changeQuestion();
            } else {
              changeQuestion();
            }
          },
          child: Text(option)),
    );
  }
}
