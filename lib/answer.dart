import 'package:flutter/material.dart';
import './option.dart';

class Answer extends StatelessWidget {
  final String ans;
  final VoidCallback addPoint;
  final VoidCallback changeQuestion;
  final List options;
  const Answer(
      {required this.ans,
      required this.addPoint,
      required this.changeQuestion,
      required this.options,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -10),
            blurRadius: 22,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...(options.map((singleoption) => Option(
                ans: ans,
                changeQuestion: changeQuestion,
                option: singleoption,
                addPoint: addPoint,
              ))).toList()
        ],
      ),
    );
  }
}
