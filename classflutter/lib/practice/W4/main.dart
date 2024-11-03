import 'gradiant_widtget.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Container(
      color: const Color(0xffE0E0E0),
      padding: const EdgeInsets.all(20),
      child:const Column(
        children: [
                  
                  ConlumbGradient(text: 'OOP',color: Color(0xffBBDEFB),),
                  ConlumbGradient(text: 'DART',color: Color(0xff64B5F6),),
                  ConlumbGradient(text: 'FLUTTER',gradient: LinearGradient(colors: [Color(0xff4EA7F1),Color(0xff2B1975)]),)
                  
        ],
        
      )

     ),
  ));
}
