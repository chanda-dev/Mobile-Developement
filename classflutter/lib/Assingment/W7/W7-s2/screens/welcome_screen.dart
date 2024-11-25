import 'package:flutter/material.dart';
  String flutterLogo = "assets/W7/W7-s2/quiz_logo.png";
 class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.startQuiz});
   final VoidCallback startQuiz;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Colors.blue
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.asset(
              flutterLogo,
              height: 300,
            ),
            const SizedBox(height: 50,),
            const Text('Crazy Quizz',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 50
              ),
              
            ),
            const SizedBox(height: 50,),
            SizedBox(
              width: 300,
              height: 50,
              child: TextButton(onPressed: startQuiz, 
              
              style:  const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Icon(
                    Icons.arrow_forward
                  ),
                  SizedBox(width: 20,),
                  Text('Start Quiz')
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

// void main()=>runApp(const MaterialApp(
//   home: Scaffold(
//     body: WelcomeScreen(startQuiz: ),
//   ),
// ));
