import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MyFavoriteCard extends StatefulWidget {
  final String? title;
  final String? des;
  const MyFavoriteCard({super.key, this.title, this.des,});

  @override
  State<MyFavoriteCard> createState() => _MyFavoriteCardState();
}

class _MyFavoriteCardState extends State<MyFavoriteCard> {
  Color? iconColor = Colors.grey;
  bool isFavorite = false;
  void favorite(){
    setState(() {
      if(isFavorite = !isFavorite){
        iconColor = Colors.red;
      } else {
        iconColor = Colors.grey;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Container(
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
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.title}',
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.cyan,
                              ),
                            ),
                            Text(
                              '${widget.des}',
                              style: const TextStyle(
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
                        child: IconButton(onPressed: favorite, 
                        icon: Icon(
                          Icons.favorite,
                          color: iconColor,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
                  )
      );
  }
}


void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: const Column(
          children: [
            MyFavoriteCard(title: 'Flutter',des: 'Library for Mobile App development',),
            MyFavoriteCard(title: 'Dart',des: 'Programing language use to write in Flutter',),
            MyFavoriteCard(title: 'Java',des: 'mostly use to build POS system',),
            MyFavoriteCard(title: 'Php',des: 'Popular on API',)
          ],
        ),
      ),
    ));
