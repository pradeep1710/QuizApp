import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final VoidCallback startQuiz;
  const StartPage(this.startQuiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 320,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40), // borderRadius
              ),
              child: Image.asset(
                "images/quizstartimg.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 90,
              child: Text(
                'Quiz Contest',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  // fontFamily: 'courier'
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple[200], backgroundColor: Colors.white),
                  onPressed: startQuiz,
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
