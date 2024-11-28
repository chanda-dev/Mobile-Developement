import 'package:classflutter/Assingment/W8/W8-s1/model/expense.dart';
import 'package:classflutter/Assingment/W8/W8-s1/screen/expensesList.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  TextEditingController? controller;
  String text = '';
  final List<Expense> _registerExpense = [
      Expense(amount: 1000000, title: 'How to get the girlfriend', category: ExpenseType.LEISURE,date: DateTime(2024,12,28)),
      Expense(amount: 2000000, title: 'How to get 2 girlfriend in a time', category: ExpenseType.LEISURE,date: DateTime(2024,12,28))
    ];
  void modal(){
    setState(() {
      showModalBottomSheet(context: context,isScrollControlled: false, builder: (BuildContext context){
        
            return Container(
              height: 200,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Add title'),
                  TextField(
                    onChanged: onTextPressed,
                  ),
                  const Text('add amount'),
                  const TextField(),
                  const Text('Confirm'),
                  IconButton(onPressed: addMoreCard, icon: const Icon(Icons.check))
                ],
              ),
            );
          });
    });
    
  }
  void onTextPressed(String test){

  }
  void addMoreCard(){
    setState(() {
      Navigator.pop(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text("Ronan-The-Best Expenses App",style: TextStyle(
        decoration: TextDecoration.none,color: Colors.black
      ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(onPressed: modal
        , icon: const Icon(
          Icons.add
        ))
      ],
      ),
      body: 
          Expenseslist(registerExpense: _registerExpense)
    );
  }
}

