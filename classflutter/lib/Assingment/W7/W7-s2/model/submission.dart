import 'package:classflutter/Assingment/W7/W7-s2/model/quiz.dart';

class Answer {
  String questionAnswer;
  final Question question;

  Answer({required this.questionAnswer, required this.question});
  bool isCorrect(){
    if(question.possibleAnswers.contains(question.goodAnswer)){
      return questionAnswer == question.goodAnswer;
    }else{
      return false;
    }
  }
}

class Submission{
  List<Answer> allAnswer = [];
  
  Submission({required this.allAnswer});

  int getScore(){
    int totalScore = 0;
    for(Answer answer in allAnswer){
      if(answer.isCorrect()){
        totalScore++;
      }
    }   
    return totalScore;
  }


  // retrieve the aswer related the given question
  Answer? getAnswerFor(Question question){
    
    for(Answer answer in allAnswer){
      if(answer.question.title == question.title){
        return answer;
      }
    
    }
    return null;
  }

  // add or update answer

  void addAnswer(Question question,String answer){
    for(int i =0;i<allAnswer.length;i++){
      if(allAnswer[i].question.title == question.title){
        allAnswer[i].questionAnswer = answer;
      }
    }
  }
  void removeAnswer(){
    allAnswer.clear();
  }

}

//testing
void main(){
  Question q1 = const Question(
      title: "Who is the best teacher?",
      possibleAnswers: ["ronan", "hongly", 'leangsiv'],
      goodAnswer: 'ronan');
  Question q2 = const Question(
      title: "Who is the best gammer?",
      possibleAnswers: ["ronan", "hongly", 'leangsiv'],
      goodAnswer: 'hongly');
      Question q3 = const Question(
      title: "Who is the best cooker?",
      possibleAnswers: ["ronan", "hongly", 'leangsiv'],
      goodAnswer: 'leangsiv');
  Answer a2 = Answer(questionAnswer: 'hongly', question: q2);
  Answer answer = Answer(questionAnswer: 'ronan', question: q1);
  Submission submission = Submission(allAnswer: [answer,a2]);

  print(answer.isCorrect());
  print(a2.isCorrect());
  print('after change');
  submission.addAnswer(q2,'Chanda');
  print(a2.isCorrect());
  print(submission.getScore());
  print(submission.getAnswerFor(q2)?.questionAnswer);
  print('after  remove');
  submission.removeAnswer();
  print(submission.getAnswerFor(q2)?.questionAnswer);
  print(submission.getAnswerFor(q1)?.questionAnswer);
}