import 'package:flutter/material.dart';

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
        child: Column(
        children: [ 
          Container(
            margin: const EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: BoxDecoration(
              color: const Color(0xff4CB050),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 25, 20, 25),
                  child:  const Icon(
                  Icons.travel_explore,
                  color: Colors.white,
                ),
                ),
                const Text(
                  'Travelling',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 40, 40, 40),
            decoration: BoxDecoration(
              color: const Color(0xff607D8B),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 25, 20, 25),
                  child:  const Icon(
                  Icons.skateboarding,
                  color: Colors.white,
                ),
                ),
                const Text(
                  'Skating',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                )
              ],
            ),
          )
        ],
      )
    ),
    )
    )
  );
}