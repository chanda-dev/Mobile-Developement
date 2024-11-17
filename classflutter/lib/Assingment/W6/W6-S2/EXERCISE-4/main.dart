import 'package:classflutter/Assingment/W6/W6-S2/EXERCISE-4/jokes.dart';
import 'package:flutter/material.dart';

Color appColor = Colors.green[300] as Color;
List<FavoriteCard> favorite = [favorite1,favorite2,favorite3,favorite4,
favorite5,favorite6,favorite7,favorite8,favorite12,favorite11,favorite10,favorite9,
favorite13,favorite14,favorite15,favorite16,favorite17,favorite18];

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...favorite.map((favorites)=>favorites),
            ],
          ),
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  const FavoriteCard({
    super.key, required this.title, required this.description,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;

  void onFavoriteClick() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                 Text(widget.description)
              ],
            ),
          ),
          IconButton(
              onPressed: onFavoriteClick,
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
    );
  }
}
