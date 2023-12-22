import 'package:flutter/material.dart';
import 'package:mit_slicing/restaurant_detail.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String imageAsset;
  final String time;

  const RestaurantCard(
      {super.key,
      required this.name,
      required this.imageAsset,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const RestaurantDetail();
          }),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xff252525),
        ),
        height: 180,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              scale: 15,
            ),
            const SizedBox(height: 17),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "$time Mins",
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
