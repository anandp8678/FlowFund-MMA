import 'package:flutter/material.dart';
import 'package:mma/screens/catagories/expence_catagory_list.dart';
import 'package:mma/screens/catagories/income_catagory_list.dart';

class ScreenCatagory extends StatefulWidget {
  const ScreenCatagory({Key? key}) : super(key: key);

  @override
  State<ScreenCatagory> createState() => _ScreenCatagoryState();
}

class _ScreenCatagoryState extends State<ScreenCatagory> with SingleTickerProviderStateMixin {
  late TabController  _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column (
      children:[
        TabBar(
          controller: _tabcontroller,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs:[
          Tab(text: 'Income',),
          Tab(text: 'Expense',),
        ]),
        Expanded(
          child: TabBarView(
            controller: _tabcontroller,
            children: [
              IncomeCatagoryList(),
              ExpenseCatagoryList(),
            ],
          ),
        ),
      ]
    );
  }
}