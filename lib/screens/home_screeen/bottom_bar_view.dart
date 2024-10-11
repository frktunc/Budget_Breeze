// import 'package:budget_breeze/screens/profile_screen/profile_screen.dart';
import 'package:budget_breeze/screens/archive_screen/archive.dart';
import 'package:budget_breeze/screens/calender_screen/calender.dart';
import 'package:budget_breeze/screens/chart_screen/chart_screen.dart';
// import 'package:budget_breeze/screens/home_screeen/home_main_screen.dart';
import 'package:budget_breeze/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../core/utils/colors.dart';

class BottomBarView extends StatefulWidget {
  final Function(int) onItemTapped;

  const BottomBarView({super.key, required this.onItemTapped});

  @override
  _BottomBarWiewState createState() => _BottomBarWiewState();
}

class _BottomBarWiewState extends State<BottomBarView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ArchiveScreen(), // Kayıtlar sayfası
    ChartScreen(),  // Grafik sayfası
   CalenderScreen(),
    ProfileScreen(), // Profil sayfası
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    widget.onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // Konum
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'Kayıtlar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded),
              label: 'Grafik',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_calendar_rounded),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.goldColor,
          unselectedItemColor: AppColors.whiteColor,
          selectedFontSize: 16, // Seçili metin boyutu
          unselectedFontSize: 14, // Seçili olmayan metin boyutu
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}


