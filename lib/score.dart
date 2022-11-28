import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final VoidCallback restart;
  final List quizScore;
  const Score({required this.restart,required this.quizScore, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 30),
            height: 350,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple[200],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 50,
                  )
                ]),
            child: Text(
              'Score\n${quizScore[0]}/${quizScore[1]}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4),
                  minimumSize: const Size(150, 60),
                  backgroundColor: Colors.deepPurple[200]),
              onPressed: restart,
              child: const Text('Restart'))
        ],
      ),
    );
  }
}
