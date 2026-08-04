import 'package:flutter/material.dart';

class IncomeCatagoryList extends StatelessWidget {
  const IncomeCatagoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Card(
          color: Colors.amber,
          child: ListTile(
            title: Text('Income Category $index'),
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
      itemCount: 50,
    );
  }
}