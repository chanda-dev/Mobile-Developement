import 'package:classflutter/Assingment/W7/W7-s2/model/submission.dart';
import 'package:classflutter/Assingment/W7/W7-s2/screens/question_screen.dart';
import 'package:classflutter/Assingment/W7/W7-s2/screens/result_screen.dart';
import 'package:classflutter/Assingment/W7/W7-s2/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'model/quiz.dart';
enum QuizState  {notStated,started,finished}
Color appColor = Colors.blue[500] as Color;
 
class QuizApp extends StatefulWidget {
  QuizApp(this.quiz, {super.key});
  List<Submission> sub = [];

  final Quiz quiz;

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  QuizState? quizState = QuizState.notStated;
  
  int i = 0;
void goQuestionScreen(){
  setState(() {
    quizState = QuizState.started;
  });

}

void chooseCorrectAnswer(String retrieveAnswer,Question retrieveQues){
  
  setState(() {
    
    Answer answer = Answer(questionAnswer: retrieveAnswer, question: retrieveQues);
    Submission submission = Submission(allAnswer: [answer]);
    widget.sub.add(submission);
    //print(submission.getScore()) ;
    print('lenght');
    print(widget.sub.length);
    if(i<widget.quiz.questions.length-1){
      i++;
    }else{
      quizState = QuizState.finished;
    }
    
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Center(
          child: Builder(builder: (BuildContext context){
            if(quizState == QuizState.notStated){
              return WelcomeScreen(startQuiz: goQuestionScreen,);
            } else if(quizState == QuizState.started){
              return QuestionScreen(getQuestions: [widget.quiz],chooseAnswer: chooseCorrectAnswer,index: i,);
            } else if (quizState == QuizState.finished){
              return  ResultScreen(submissions: widget.sub,);
            } else {
              return ResultScreen(submissions: widget.sub,);
            }
          })
        ),
      ),
    );
  }
}