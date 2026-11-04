import 'package:flutter/material.dart';
import 'package:mma/models/category/category_models.dart';

Future<void> showCategoryAddPopup(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (ctx) {
      return SimpleDialog(
        title: const Text('Add Category'),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Category Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RadioButton(title: 'Income', type: CategoryType.income),
                RadioButton(title: 'Expense', type: CategoryType.expense),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle category addition logic here
                Navigator.of(ctx).pop(); // Close the dialog
              },
              child: const Text('Add'),
            ),
          ),
        ],
      );
    },
  );
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;
  const RadioButton({Key? key, required this.title, required this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Radio<CategoryType>(
        value: type, 
        groupValue: CategoryType.expense, 
        onChanged: (value){},),
        Text(title),
      ]
    );
  }
}