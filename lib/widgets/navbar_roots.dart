import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
// import 'package:lottie/lottie.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    //Home screen
    HomeScreen(),
    //Filter
    Container(),
    //saved
    Container(),
    // Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 172, 234, 242),
          unselectedItemColor: Color.fromARGB(66, 21, 21, 21),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.filter_alt), label: "Filter"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Saved"),
          ],
        ),
      ),
    );
  }
}
