import 'package:flutter/material.dart';
 
import '../../models/expense.dart';
import 'expenses_form.dart';
import 'expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  void onUndo(Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }
  void onExpenseRemoved(Expense expense) {
    
    setState(() {
      _registeredExpenses.remove(expense);
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Expense deleted',
              style: 
                TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none),
                  ),
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(label: 'Undo',textColor: Colors.blue, onPressed:()=> onUndo(expense)),
                  )
                  );
    });
  }

  void onExpenseCreated(Expense newExpense) {
    setState(() {
      _registeredExpenses.add(newExpense);
    });
  }
 

  void onAddPressed() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => ExpenseForm(onCreated: onExpenseCreated,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: onAddPressed,
          )
        ],
        backgroundColor: Colors.blue[700],
        title: const Text('Ronan-The-Best Expenses App'),
      ),
      body: ExpensesList(expenses: _registeredExpenses, onExpenseRemoved: onExpenseRemoved,),
    );
  }
}
