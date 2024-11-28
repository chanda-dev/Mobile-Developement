import 'package:classflutter/practice/W8/W8-s1/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key,  this.onCreate});
  final Function(Expense)? onCreate;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();


  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title!'),
            ),
          ),
           TextField(
            keyboardType: TextInputType.number,
            
            maxLength: 50,
            controller: _amountController,
            decoration: const InputDecoration(
              prefix: Text('\$'),
              label: Text('Amount')
            ),
          ),
       

          ElevatedButton(
            onPressed: () => {
            print(_titleController.text),
            print(_amountController.text)
          }, child: const Text('Check value'))
        ],
      ),
    );
  }
}
