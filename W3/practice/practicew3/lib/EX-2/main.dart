import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container( 
      decoration: const BoxDecoration(
        color: Color(0xff64B5F6),

      ),
      padding:const EdgeInsets.all(50),
      margin: const EdgeInsets.all(40),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff1E88E5),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: const Center(
          child: Text(
            'CADT STUDENTS',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none),
          ),
        ),
      ),
    ),
  ));
}

/* In this exercise, we haven’t used the Scaffold widget: Why? What is the purpose of this widget?
  -> because in this Exercise we haven't use any action button to do something(unecessary widget). 
  we use scaffold widget for serving as a conerstone.
  it streanlines the construction of key UI conponents, 
  including the app bar, body, floating action button, and drawer.


*/