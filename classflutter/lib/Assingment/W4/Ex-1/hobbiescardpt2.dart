import 'package:flutter/material.dart';

class MyHobbiesCard extends StatelessWidget {
  final Color? color;
  final Icon? icon;
  final String? text;
  const MyHobbiesCard({super.key,this.color,this.icon,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 25, 20, 25),
                  child:  icon,
                ),
                Text(
                  '$text',
                  style: const TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                )
              ],
            ),

    );
  }
}

void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'My Hobbies',
          style: TextStyle(
            decoration: TextDecoration.none,
          ),
          
        ),
      ),
      body: Container(
        color: const Color(0xff9E9E9E),
      child: const Column(
        
        children: [
          MyHobbiesCard(color: Color(0xff4CB050),icon: Icon(Icons.travel_explore,color: Colors.white,),text: 'Travelling',),
          MyHobbiesCard(color: Color(0xff607D8B),icon: Icon(Icons.skateboarding,color: Colors.white,),text: 'Skating',),
          
          
        ],
      )
    ),
    )
    )
  );
}