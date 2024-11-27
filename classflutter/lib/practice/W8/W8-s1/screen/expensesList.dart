import 'package:classflutter/practice/W8/W8-s1/model/expense.dart';
import 'package:flutter/material.dart';

class Expenseslist extends StatelessWidget {
  List<Expense> registerExpense = [
      
    ];
  Expenseslist({super.key,required this.registerExpense});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ...registerExpense.map((item)=>
            Row(
              children: [
                Column(
                  children: [
                    Text(item.title),
                    Text('${item.amount}'),
                    Text('${item.date}'),
                    Text('${item.id}')
                  ],
                )
              ],
            )
            
          )
      ],
    );
     
  }
}