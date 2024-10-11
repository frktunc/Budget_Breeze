import 'package:budget_breeze/screens/home_screeen/bottom_bar_view.dart';
import 'package:flutter/material.dart';

class HomeWiew extends StatefulWidget {
  const HomeWiew({super.key});

  @override
  State<HomeWiew> createState() => _HomeWiewState();
}

class _HomeWiewState extends State<HomeWiew> {
  // int _selectedIndex = 0;
  

  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomBarView(onItemTapped: _onItemTapped),
    );
  }
}