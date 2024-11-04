import 'package:flutter/material.dart';
enum Buttons {
  primary(Colors.blue,'Submit',Icons.check),
  secondary(Colors.green,'Time',Icons.access_alarm),
  disabled(Colors.grey,'Account',Icons.account_tree);
  final Color? color;
  final String? label;
  final IconData? icon;
  const Buttons(this.color, this.label,this.icon);
}
void onPressed() {
  print('hi');
}

class MyButton extends StatelessWidget {
  final Buttons? color;
  final Buttons? label;
  final Buttons? icon;
  final String position;
  
  const MyButton({super.key,this.color,required this.label,required this.icon,this.position='left'});

  @override
  Widget build(BuildContext context) {

    return 
    Container(
      margin: const EdgeInsets.all(20),
    child: TextButton.icon(onPressed: onPressed, 
    label: Text(
      
      '${label!.label}',
      style: const TextStyle(
        decoration: TextDecoration.none,
      ),
    ),
    icon: Icon(icon!.icon,  
    ),
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(color!.color),
      minimumSize: const WidgetStatePropertyAll(Size(600, 50)),  
    ),
    )
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Custom buttoms',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.grey
            ),
            ),
        ),
        body: const Column(
          
          children: [
            
            MyButton(label: Buttons.primary, icon: Buttons.primary,color: Buttons.primary,),
            MyButton(label: Buttons.secondary, icon: Buttons.secondary,color: Buttons.secondary,),
            MyButton(label: Buttons.disabled, icon: Buttons.disabled,color: Buttons.disabled,),
          ],
        ),
      ),
    )
  );
}