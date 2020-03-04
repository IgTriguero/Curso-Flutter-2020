import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  Quiz mainQuiz = Quiz();
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      bool correctAnswer = mainQuiz.getAnswer();
      if (correctAnswer == userPickedAnswer) {
        addCheck();
      } else {
        addClose();
      }
      if (mainQuiz.isFinished()) {
        Alert(
          context: context,
          type: AlertType.error,
          title: "Quiz Terminado",
          desc: "Has terminado el Quiz, pulse continuar para volver a empezar.",
          buttons: [
            DialogButton(
              child: Text(
                "Continuar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  mainQuiz.reset();
                  scoreKeeper = [];
                });
                Navigator.pop(context);
              },
              width: 120,
            )
          ],
        ).show();
      } else {
        mainQuiz.nextQuestion();
      }
    });
  }

  void addCheck() {
    scoreKeeper.add(
      Icon(
        Icons.check,
        color: Colors.green,
        size: 20,
      ),
    );
  }

  void addClose() {
    scoreKeeper.add(
      Icon(
        Icons.close,
        color: Colors.red,
        size: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                mainQuiz.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/