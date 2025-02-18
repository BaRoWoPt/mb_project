import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moblie_project/screens/home/views/main_screen.dart';
import 'package:moblie_project/screens/stats/stats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late Color selectedItem = Colors.green;
  Color unselectedItem = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 15,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 3,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home,
                        color: index == 0 ? selectedItem : unselectedItem),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.graph_square_fill,
                        color: index == 1 ? selectedItem : unselectedItem),
                    label: 'Stats')
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: const Icon(CupertinoIcons.add),
        ),
        body: index == 0 ? MainScreen() : StatScreen());
  }
}
