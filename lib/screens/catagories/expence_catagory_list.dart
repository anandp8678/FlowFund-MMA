import 'package:flutter/material.dart';

class ExpenseCatagoryList extends StatelessWidget {
  const ExpenseCatagoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Card(
          color: Colors.amber,
          child: ListTile(
            title: Text('Expense Category $index'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Handle delete action
              },
            ),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(height: 10);
      },
      itemCount: 10,
    );
  }
}