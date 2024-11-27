import 'package:classflutter/Assingment/W7/W7-s2/model/quiz.dart';
import 'package:classflutter/Assingment/W7/W7-s2/model/submission.dart';
import 'package:classflutter/Assingment/W7/W7-s2/quiz_app.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.submissions});
  final List<Submission> submissions;
  Color correctColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...submissions.map((allAns)=>
      Column(
        children: [
          ...allAns.allAnswer.map((answer)=>
            Text(answer.question.title),
          )
        ],
      )
    )
      ],
    );
    
  }
}
 