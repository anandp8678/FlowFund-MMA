import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemBuilder: (ctx,index) {
      return Card(
        elevation: 0,
        child: const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.purple,
          ),
          title: Text('Title'),
          subtitle: Text('Subtitle'),
          trailing: Text('Amount'),
        ),
      );
    },
    separatorBuilder: (ctx,index) {
      return const Divider();
    }, 
    itemCount: 50);

  }
}