import 'package:flutter/material.dart';

// part 2
enum Product {
  dart('DART','the best object language','assets/assetsW4/dart.png'),
  flutter('FLUTTER','the best mobile widget library','assets/assetsW4/flutter.png'),
  firebase('FIREBASE','the best cloud database','assets/assetsW4/firebase.png');

  const Product(this.name,this.description,this.image);
  final String name;
  final String description;
  final String image;
}
// part3

class ProductCart extends StatelessWidget {
  final Product? name;
  final Product? description;
  final Product? image;
  const ProductCart({super.key,required this.name,required this.description,required this.image,});

  @override
  Widget build(BuildContext context) {
    return  Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                ),
                width: 400,
                height: 200,
                margin: const EdgeInsets.fromLTRB(10,5,10,5),
                child: Card(
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Image.asset(
                      image!.image,
                      width: 100,
                      height: 100,
                      
                    ),
                     Text(
                      name!.name,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      description!.description,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
                )
                
              )
              );
  }
}

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
          child: const Column(
            children: [
             ProductCart(name: Product.dart, description: Product.dart, image: Product.dart),
             ProductCart(name: Product.flutter, description: Product.flutter, image: Product.flutter),
              ProductCart(name: Product.firebase, description: Product.firebase, image: Product.firebase),
            ],
          )
          
        ),
      ),
    )
  );
}