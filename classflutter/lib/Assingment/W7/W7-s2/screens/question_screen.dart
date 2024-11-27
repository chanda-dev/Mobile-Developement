
import 'package:classflutter/Assingment/W7/W7-s2/model/quiz.dart';
import 'package:classflutter/Assingment/W7/W7-s2/model/submission.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  int index;
  List<Quiz> getQuestions = [];
  final Function(String getAnswer,Question ques) chooseAnswer;
  QuestionScreen({super.key,required this.getQuestions, required this.chooseAnswer,required this.index});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ...getQuestions.map((e)=>
          Column(
            children: [
              Text(e.title),
              Text('${index+1}',style: const TextStyle(color: Colors.black,decoration: TextDecoration.none),),
              Text(e.questions[index].title),
              ...e.questions[index].possibleAnswers.map((answer)=>
                Column(
                  children: [
                    TextButton(onPressed:() => chooseAnswer(answer,e.questions[index]), child: Text(answer))
                  ],
                )
              ), 
            ],
          )
        )
      ],
    );
  }
}
 