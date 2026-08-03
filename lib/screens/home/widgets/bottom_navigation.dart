import 'package:flutter/material.dart';
import 'package:mma/screens/home/Screen_home.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder:(BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar( 
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: updatedIndex,
        onTap: (newIndex) {
          // Update the selected index
          ScreenHome.selectedIndexNotifier.value = newIndex;
        },
        items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Category',
        ),
      ],);
      }
    );
  }
}