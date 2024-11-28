import 'package:classflutter/Assingment/W8/W8-s1/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Expenseslist extends StatelessWidget {
  List<Expense> registerExpense = [
      
    ];
  Expenseslist({super.key,required this.registerExpense});

  @override
  Widget build(BuildContext context) {

    return ListView(
      
      children: [
        ...registerExpense.map((item)=>
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title),
                      Text('${item.amount}\$'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Builder(builder: (BuildContext context){
                    if(item.category == ExpenseType.FOOD){
                      return const Icon(Icons.fastfood);
                    } else if(item.category == ExpenseType.LEISURE){
                      return const Icon(Icons.pool);
                    } else if(item.category == ExpenseType.TRAVEL){
                      return const Icon(Icons.travel_explore);
                    } else {
                      return const Icon(Icons.work);
                    }
                  }),
                  const SizedBox(width: 10,),
                  Text(
                        DateFormat('yyyy-MM-dd').format(item.date),
                        style: const TextStyle(fontSize: 14),
                      ),
                 
                    ],
                  )  
                ],
              ),
            )
          )
      ],
    );
     
  }
}