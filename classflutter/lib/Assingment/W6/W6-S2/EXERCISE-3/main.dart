import 'package:classflutter/Assingment/W6/W6-S2/EXERCISE-3/screen/temperature.dart';
import 'package:flutter/material.dart';
import 'screen/welcome.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool switchScreen = false;
  void changeScreen(){
    setState(() {
      switchScreen = !switchScreen;
    });
  }
  
  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Builder(builder: (BuildContext context){
            if(switchScreen){
              return Temperature(goBack: changeScreen);
            } else{
              return Welcome(pressChange: changeScreen);
            }
          })
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
