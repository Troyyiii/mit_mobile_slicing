import 'package:flutter/material.dart';
import 'package:mit_slicing/home_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff121212),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff121212),
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
              size: 25,
            ),
            selectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            unselectedIconTheme: const IconThemeData(color: Color(0xffA1A1AA)),
            unselectedItemColor: const Color(0xffA1A1AA),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
