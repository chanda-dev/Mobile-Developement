// Start from the exercice 3 code
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
final  String? text;
final Color? color;
const CustomCard({super.key,this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
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


void main() {
  runApp(MaterialApp(
    home: Container(
      color: const Color(0xffE0E0E0),
      padding: const EdgeInsets.all(20),
      child:const Column(
        children: [
                  Text(
                    'Nomal',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.blue,
                    ),
                  ),
                  CustomCard(text: 'OOP',color: Color(0xffBBDEFB),),
                  CustomCard(text: 'DART',color: Color(0xff64B5F6),),
                  CustomCard(text: 'FLUTTER',color: Color(0xff1E88E5),),
                  Text(
                    'Bounce',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),

                    ),
                  ConlumbGradient(text: 'OOP',color: Color(0xffBBDEFB),),
                  ConlumbGradient(text: 'DART',color: Color(0xff64B5F6),),
                  ConlumbGradient(text: 'FLUTTER',gradient: LinearGradient(colors: [Color(0xff4EA7F1),Color(0xff2B1975)]),)
                  
        ],
        
      )

     ),
  ));
}
