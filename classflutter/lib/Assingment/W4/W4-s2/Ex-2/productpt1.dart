import 'package:flutter/material.dart';
void main() {
  runApp(
    
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product'),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          color: Colors.blue,
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                ),
                width: 400,
                height: 180,
                margin: const EdgeInsets.all(20),
                child: Card(
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Image.asset(
                      'assets/assetsW4/dart.png',
                      width: 100,
                      height: 100,
                      
                    ),
                    const Text(
                      'DART',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'the best object language',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                )
                
              )
              ),
              
            ],
          ),
        ),
      ),
    )
  );
}