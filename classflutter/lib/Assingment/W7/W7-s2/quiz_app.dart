import 'package:classflutter/Assingment/W7/W7-s2/screens/question_screen.dart';
import 'package:classflutter/Assingment/W7/W7-s2/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'model/quiz.dart';

Color appColor = Colors.blue[500] as Color;
 
class QuizApp extends StatefulWidget {
  const QuizApp(this.quiz, {super.key});

  final Quiz quiz;

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool switchScreen = true;
void doQuizz(){
  setState(() {
    switchScreen = !switchScreen;
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Center(
          child: Builder(builder: (BuildContext context){
            if(switchScreen){
              return WelcomeScreen(startQuiz: doQuizz,);
            } else{
              return const QuestionScreen();
            }
          })
        ),
      ),
    );
  }
}
