import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mit_slicing/home_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D0D0D),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff252525),
          ),
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              backgroundColor: Colors.transparent,
              color: const Color(0xff53E88B),
              tabBackgroundColor: const Color(0xff28372f),
              activeColor: const Color(0xff35d381),
              gap: 12,
              tabBorderRadius: 10,
              curve: Curves.easeInOutQuart,
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile",
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: "Cart",
                ),
                GButton(
                  icon: Icons.chat,
                  text: "Chat",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
