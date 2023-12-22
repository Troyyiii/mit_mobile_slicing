import 'package:flutter/material.dart';
import 'package:mit_slicing/menu_card.dart';
import 'package:mit_slicing/top_navbar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0D0D0D),
      appBar: TopNavbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20, left: 11),
                child: Text(
                  "Popular Menu",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              MenuCard(
                name: 'Herbal Pancake',
                restaurant: 'Warung Herbal',
                price: '7',
              ),
              MenuCard(
                name: 'Fruit Salad',
                restaurant: 'Wijie Resto',
                price: '5',
              ),
              MenuCard(
                name: 'Green Noodle',
                restaurant: 'Noodle Home',
                price: '15',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
