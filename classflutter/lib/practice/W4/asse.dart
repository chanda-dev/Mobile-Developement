import 'dart:math';

import 'package:flutter/material.dart';

const String diceImage2 = 'assets/w4-s1/dice-2.png';
const String diceImage4 = 'assets/w4-s1/dice-4.png';
const String diceImage1 = 'assets/w4-s1/dice-1.png';
const String diceImage3 = 'assets/w4-s1/dice-3.png';

List<String> activeDiceImage = [diceImage1,diceImage3,diceImage4,diceImage2];
String image = diceImage2;
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}



class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      var  i = activeDiceImage.length;
      int j  = Random().nextInt(i);
      //print(i);
      image = activeDiceImage[j];
      
    });
  }

  

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          
          image,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));