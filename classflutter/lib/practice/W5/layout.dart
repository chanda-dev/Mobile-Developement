import 'package:flutter/material.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({super.key});

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Layout',
            style: TextStyle(
              decoration: TextDecoration.none
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 400,
                ),
                Row(
                  
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        height: 100,
                      )
                    
                    ),
                    Container(
                      height: 100,
                      color: Colors.pink,
                      width: 100,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.orange,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      color: Colors.orange,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      color: Colors.orange,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Expanded(child: Container(
                  color: Colors.pink,
                  height: 100,
                ),)
                
                
                
              ],
            ),
          ),
        ),
      ),
    )
  );
}