import 'package:classflutter/Assingment/W6/W6-S2/EXERCISE-4/jokes.dart';
import 'package:flutter/material.dart';

Color appColor = Colors.green[300] as Color;
int  i =0;
void main() => runApp( const OnlyFavorite());

class OnlyFavorite extends StatefulWidget {
  const OnlyFavorite({super.key});

  @override
  State<OnlyFavorite> createState() => _OnlyFavoriteState();
}
class _OnlyFavoriteState extends State<OnlyFavorite> {

  void onFavoriteClick(){
    setState(() {
      jokes.isFavorite = !jokes.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...jokes.favorites.map((item)=>
                FavoriteCard(title: item.title, description: item.description,onPressHeart:onFavoriteClick,)
                
              )
              
            ],
          ),
        ),
      ),
    );
  }
}


class FavoriteCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onPressHeart;
  const FavoriteCard({
    super.key, required this.title, required this.description,this.onPressHeart,
  });

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
                  title,
                  style: TextStyle(
                      color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                 Text(description)
              ],
            ),
          ),
          IconButton(
              onPressed: onPressHeart,
              icon: Icon(
                jokes.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: jokes.isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
    );
  }
}
