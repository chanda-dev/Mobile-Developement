
import 'package:flutter/material.dart';

List<String> images = [
  "assets/assetsW4/bird.jpg",
  "assets/assetsW4/bird2.jpg",
  "assets/assetsW4/insect.jpg",
  "assets/assetsW4/girl.jpg",
  "assets/assetsW4/man.jpg",
];
List<String> des = [
  "Bird 1",
  'Bird 2',
  'Insect',
  'Girl',
  'Man'
];
int i = 0;
class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
   void goNext(){
    setState(() {
      if(i>=images.length-1){
        i=0;
      } else{
        i++;
      }
    });
  }

  void goPrivious(){
    setState(() {
      if(i==0){
        i = images.length-1;
      } else{
        i--;
      }
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed:goPrivious,
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: goNext,
            ),
          ],
        ),
        body: 
          Column(
            children: [
              Image.asset(images[i],
              
              ),
              Text(
                '${i+1}'
              )
            ]
            
          )
      );
  }

}


void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: MyImage()
    ));
