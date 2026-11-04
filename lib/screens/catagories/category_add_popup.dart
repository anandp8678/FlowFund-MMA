import 'package:flutter/material.dart';

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