
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...getQuestions.map((e)=>
          Column(
            
            children: [
              
              Text('${index+1}',style: const TextStyle(color: Colors.black,decoration: TextDecoration.none),),
              
              Text(e.questions[index].title,
                style: const TextStyle(color: Colors.white,fontSize: 20),
              ),
              const SizedBox(height: 20,),
              ...e.questions[index].possibleAnswers.map((answer)=>
                Column(
                  children: [
                    const SizedBox(height: 20,),
                    TextButton(onPressed:() => chooseAnswer(answer,e.questions[index]), child: Container(
                      
                      width: 200,height: 50,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.fromLTRB(80, 15, 0, 0),
                      child: Text(answer,style: const TextStyle(color: Colors.white,fontSize: 15,)),
                    ))
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
 