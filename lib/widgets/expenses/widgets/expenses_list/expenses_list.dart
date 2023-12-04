import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses/widgets/expenses_list/widgets/expense_item.dart';
import 'package:flutter/material.dart';

// Widget to display a list of expenses with dismissible functionality
class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  // List of expenses to be displayed
  final List<Expense> expenses;

  // Callback function to remove an expense
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        // Background color when dismissing an item
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
        ),
        // Callback when an item is dismissed
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        // Unique key for each item in the list
        key: ValueKey(expenses[index]),
        // Displaying the individual ExpenseItem
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
}
