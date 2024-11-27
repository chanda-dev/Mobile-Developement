import 'package:classflutter/Assingment/W7/W7-s2/model/quiz.dart';
import 'package:classflutter/Assingment/W7/W7-s2/model/submission.dart';
import 'package:classflutter/Assingment/W7/W7-s2/quiz_app.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.submissions,required this.restart});
  final VoidCallback restart;
  final List<Submission> submissions;
  Color correctColor = Colors.red;
  
  int getTotalScore(){
    int totalScore = 0;
    
    totalScore = submissions.fold(0, (sum, submission) => sum + submission.getScore());
    return totalScore;
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ 
        ...submissions.map((allAns)=>
      Column(
        children: [
          
          ...allAns.allAnswer.map((answer)=>
            Column(
              children: [
                Text(answer.question.title),
                ...answer.question.possibleAnswers.map((possible)=>
                  Text(possible)
                ),
                Text('The Correct answer is: ${answer.question.goodAnswer}'),
                Builder(builder: (BuildContext context){
                  if(answer.isCorrect()){
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your answer is: ${answer.questionAnswer}'),
                        Icon(Icons.check),
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Your answer is: ${answer.questionAnswer}'),
                        Icon(Icons.close),
                      ],
                    );
                  }
                }),
                
                
              ],
            ),
            
          ),
          
        ],
      )
    ),
    Column(
      children: [
        Text('${getTotalScore()}')
      ],
    ),
    TextButton.icon(onPressed: restart,icon: const Icon(Icons.restart_alt), label: const Text("Restart quiz"))
      ],
    );
    
  }
}
 