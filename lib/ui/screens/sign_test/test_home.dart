import 'package:flutter/material.dart';
import 'quizzbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
//import 'package:sped_app/constants.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void checkedAnswer(String userPickedAnswer) {
    String correctAnswers = quizBrain.getQuestionAnswer();
    //String correctAnswers = quizBrain.getQuestionAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswers) {
          scoreKeeper.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            const Icon(
              Icons.clear,
              color: Colors.red,
            ),
          );
        }
        quizBrain.nextQuestion();
      }
    });
  }

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  //
  // ];
  //
  // Question q1 = Question(q:'You can lead a cow down stairs but not up stairs.', a:false);

  // List<Question> questionBank = [
  //   Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
  //   Question(
  //       q: 'Approximately one quarter of human bones are in the feet.',
  //       a: true),
  //   Question(q: 'A slug\'s blood is green.', a: true),
  // ];

  // List<bool> answers = [false, true, true];
  // late int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "What sign is this?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Expanded(
          flex: 5,
          //child: Text(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SizedBox(
                height: 300,
                child: Image.asset(quizBrain.getQuestionText()),
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: scoreKeeper,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.blue,
                // side: MaterialStateProperty.all<Border>(Border.all(width: 20))
              ),
              child: Text(
                quizBrain.getOption1(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkedAnswer(quizBrain.getOption1());
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                // how to find parent class
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                quizBrain.getOption2(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkedAnswer(quizBrain.getOption2());
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                // how to find parent class
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                quizBrain.getOption3(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkedAnswer(quizBrain.getOption3());
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                // how to find parent class
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                quizBrain.getOption4(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkedAnswer(quizBrain.getOption4());
              },
            ),
          ),
        ),
      ],
    );
  }
}
