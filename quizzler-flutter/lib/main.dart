import 'package:flutter/material.dart';
import 'question.dart';

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
  List<Question> questions = [
    Question(q:'angka genap selalu dapat dibagi dua',a:true), 
    Question(q:'semua bilangan adalah bilangan bulat',a:false),
    Question(q:'epstein kills himself', a:false)
  ];
  List<Icon> ScoreKeeper = [
    Icon(Icons.check, color: Colors.green),
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];
  List<bool> questionAnswer = [true, false, false];
  int question_tracker = 0;

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
                questions[question_tracker].question,
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
                //The user picked true.
                bool answer = questionAnswer[question_tracker].answer;
                setState(() {
                  if (answer == true) {
                    ScoreKeeper.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    ScoreKeeper.add(Icon(Icons.close, color: Colors.red));
                  }
                  question_tracker++;
                });
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
                //The user pic false.
                bool answer = questionAnswer[question_tracker].answer;
                setState() {
                  if (answer == false) {
                    ScoreKeeper.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    ScoreKeeper.add(Icon(Icons.close, color: Colors.red));
                  }
                  question_tracker++;
                }
              },
            ),
          ),
        ),
        Row(
          children: ScoreKeeper,
        )
      ],
    );
  }
}
