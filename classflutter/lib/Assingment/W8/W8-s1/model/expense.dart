import 'package:uuid/uuid.dart';

const Uuid uuid = Uuid();

enum ExpenseType{
  FOOD,TRAVEL,LEISURE,WORK
}

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType category;
  Expense({required this.amount,
   required this.date,required this.title,required this.category}):this.id = uuid.v4();
  
}