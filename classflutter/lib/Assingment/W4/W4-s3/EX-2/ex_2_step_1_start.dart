import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: DottedBorder(
                  strokeWidth: 1,
                  dashPattern: const [
                    5,2,
                  ],
                  child: Row(
                    
                  children: [
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: DottedBorder(
                        
                        color: Colors.black,
                        strokeWidth: 1,
                        dashPattern: const [
                          5,
                          2,
                        ],
                        
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'title',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.cyan,
                              ),
                            ),
                            Text(
                              'description',
                              style: TextStyle(
                                decoration: TextDecoration.none, 
                              ),
                            )
                          ],
                        ),
                      )
                      )
                      
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                         child:  DottedBorder( 
                        strokeWidth: 1,
                        dashPattern: const [
                          5,
                          2
                        ],
                        child: IconButton(onPressed: (){}, 
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
                  )
                )
          ],
        ),
      ),
    ));
