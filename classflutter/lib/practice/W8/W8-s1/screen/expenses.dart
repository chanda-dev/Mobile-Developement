import 'package:classflutter/practice/W8/W8-s1/model/expense.dart';
import 'package:classflutter/practice/W8/W8-s1/screen/expensesList.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  void mo(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Expense> _registerExpense = [
      Expense(amount: 5.5, title: 'Flutter', category: ExpenseType.FOOD,date: DateTime.now())
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("Ronan-The-Best Expenses App",style: TextStyle(
        decoration: TextDecoration.none,color: Colors.black
      ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(
          Icons.add
        ))
      ],
      ),
      body: 
          Expenseslist(registerExpense: _registerExpense)
    );
  }
}

void main()=>runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Expenses(),
));