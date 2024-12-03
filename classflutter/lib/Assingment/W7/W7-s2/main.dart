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
  const Question q4 = Question(
  title: "What is the largest ocean in the world?",
  possibleAnswers: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean"],
  goodAnswer: 'Pacific Ocean');

const Question q5 = Question(
  title: "What is the largest country in South America by land area?",
  possibleAnswers: ["Brazil", "Argentina", "Colombia"],
  goodAnswer: 'Brazil');

const Question q6 = Question(
  title: "What is the capital of Australia?",
  possibleAnswers: ["Sydney", "Melbourne", "Canberra"],
  goodAnswer: 'Canberra');

const Question q7 = Question(
  title: "What is the official language of Brazil?",
  possibleAnswers: ["Spanish", "Portuguese", "French"],
  goodAnswer: 'Portuguese');

const Question q8 = Question(
  title: "What is the currency of Japan?",
  possibleAnswers: ["Yuan", "Yen", "Won"],
  goodAnswer: 'Yen');

const Question q9 = Question(
  title: "Who was the first president of the United States?",
  possibleAnswers: ["Thomas Jefferson", "George Washington", "Abraham Lincoln"],
  goodAnswer: 'George Washington');

const Question q10 = Question(
  title: "What is the largest desert in the world?",
  possibleAnswers: ["Gobi Desert", "Sahara Desert", "Arabian Desert"],
  goodAnswer: 'Sahara Desert');

const Question q11 = Question(
  title: "What is the tallest land animal?",
  possibleAnswers: ["Giraffe", "Elephant", "Hippopotamus"],
  goodAnswer: 'Giraffe');

const Question q12 = Question(
  title: "What is the largest organ in the human body?",
  possibleAnswers: ["Heart", "Liver", "Skin"],
  goodAnswer: 'Skin');

const Question q13 = Question(
  title: "What is the chemical symbol for gold?",
  possibleAnswers: ["Ag", "Au", "Hg"],
  goodAnswer: 'Au');

const Question q14 = Question(
  title: "What is the capital of Canada?",
  possibleAnswers: ["Toronto", "Montreal", "Ottawa"],
  goodAnswer: 'Ottawa');

const Question q15 = Question(
  title: "What is the largest freshwater lake in the world?",
  possibleAnswers: ["Lake Superior", "Lake Victoria", "Lake Huron"],
  goodAnswer: 'Lake Superior'); 

  List<Question> myQuestions = [q1, q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15];
  Quiz myQuiz = Quiz(title: "Crazy Quizz", questions: myQuestions);

  runApp(QuizApp(myQuiz));
}
