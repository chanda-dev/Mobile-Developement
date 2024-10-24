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
        borderRadius: BorderRadius.circular(16),
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
void main() {
  runApp(MaterialApp(
    home: Container(
      color: const Color(0xffE0E0E0),
      padding: const EdgeInsets.all(20),
      child:const Column(
        children: [
                  ConlumbGradient(text: 'OOP',color: Color(0xffBBDEFB),),
                  ConlumbGradient(text: 'DART',color: Color(0xff64B5F6),),
                  ConlumbGradient(text: 'OOP',gradient: LinearGradient(colors: [Color(0xff4EA7F1),Color(0xff2B1975)]),),
                  
        ],
      ) 
     ),
  ));
}
