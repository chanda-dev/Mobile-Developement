import 'package:flutter/material.dart';
/* part 1
  SizeBox is use to it make the size of the child to do not depend or
   force to change the size by parent.
  ElevatedButton is use to add dimension to otherwise mostly flat layouts
*/
// part 2

 
class SelectedButton extends StatefulWidget {

  const SelectedButton({super.key,});

  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
    Color color = const Color(0xffE3F2FD);
    String text = 'Not selected';
    Color textColor = Colors.black;
  void changeButton(){
    setState(() {
      color = const Color(0xff2690ED);
      text = 'Selected';
      textColor = Colors.white;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child:  SizedBox(
                width: 400,
                height: 100,
                
                child: ElevatedButton(
                    onPressed:changeButton,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                    ),
                    child: Center(
                      child: Text(text,
                      style: TextStyle(
                        color: textColor
                      ),),
                    ),
                    ),
              )
    );
    
  }
}

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          
          child: Column(
            
            children: [
              SelectedButton(),
              SelectedButton(),
              SelectedButton(),
              SelectedButton()
            ],
          ),
        ),
      ),
    ));
