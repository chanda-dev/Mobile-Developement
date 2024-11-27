 
class Quiz {
  final String title;
  final List<Question> questions;

  Quiz({required this.title, required this.questions});
}

class Question {
  final String title;
  final List<String> possibleAnswers;
  final String goodAnswer;

  const Question({required this.title, required this.possibleAnswers, required this.goodAnswer});
}

// return Column(
//                   children: [
//                     Text(item.title),
//                     ...item.possibleAnswers.map((a)=>
//                       Column(
//                         children: [
//                           TextButton(onPressed: () => chooseAnswer(a,item), child: Text(a))
//                         ],
//                       )
//                     )
                    
//                   ],
//                 );
