import 'package:flutter/material.dart';
import 'package:mma/screens/home/widgets/bottom_navigation.dart';
import 'package:mma/screens/transactions/screen_transaction.dart';
import 'package:mma/screens/catagories/screen_catagory.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const [
    ScreenTransaction(),
    ScreenCatagory(), // Assuming you have a ScreenCategory widget
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
      backgroundColor: Colors.purple,
      title: const Text('FlowFund-MMA'),
      centerTitle: true,
),
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext ctx, int updatedIndex, Widget? _) {
            return _pages[updatedIndex];
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('Add transaction');
          } else {
            print('Add category');
          }
        },
        child: const Icon(Icons.add),
      )
    );
  }
}