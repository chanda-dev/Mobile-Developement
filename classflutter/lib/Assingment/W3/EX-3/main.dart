import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      color: const Color(0xffE0E0E0),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [ 
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffBBDEFB),
            ),
            child: const Center(
              child: Text(
                'OOP',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff64B5F6),
            ),
            child: const Center(
              child: Text(
                'DART',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff1E88E5),
            ),
            child: const Center(
              child: Text(
                'FLUTTER',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Text(
            'BOUNCE',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffBBDEFB),
            ),
            child: const Center(
              child: Text(
                'OOP',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff64B5F6),
            ),
            child: const Center(
              child: Text(
                'DART',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [Color(0xff4EA7F1),Color(0xff2B1975)])
            ),
            
            child: const Center(
              child: Text(
                'FLUTTER',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          
          
        ],
      ),
     ),
  ));
}
