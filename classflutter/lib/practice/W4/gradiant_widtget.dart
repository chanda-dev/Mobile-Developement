import 'package:flutter/material.dart';

class ConlumbGradient extends StatelessWidget {
final  String? text;
final Color? color;
final Gradient? gradient;
const ConlumbGradient({super.key,this.text,this.gradient,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          '$text',
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none

          ),
        ),
      )
    );
  }
}