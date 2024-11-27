import 'package:flutter/material.dart';
import 'quiz_app.dart';
import 'model/quiz.dart';



void main() {

  Question q1 = const Question(
      title: "Who is the best teacher?",
      possibleAnswers: ["ronan", "hongly", 'leangsiv'],
      goodAnswer: 'ronan');
  Question q2 = const Question(
      title: "Which color is the best?",
      possibleAnswers: ["blue", "red", 'green'],
      goodAnswer: 'red');
      Question q3 = const Question(
      title: "Which color is the best?",
      possibleAnswers: ["blue", "red", 'green'],
      goodAnswer: 'green');

  List<Question> myQuestions = [q1, q2,q3];
  Quiz myQuiz = Quiz(title: "Crazy Quizz", questions: myQuestions);

  runApp(QuizApp(myQuiz));
}
