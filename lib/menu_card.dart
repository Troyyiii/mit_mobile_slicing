import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String name;
  final String restaurant;
  final String price;

  const MenuCard(
      {super.key,
      required this.name,
      required this.restaurant,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff252525),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/moonShine.jpg",
                fit: BoxFit.cover,
                height: 64,
                width: 64,
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    restaurant,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff666666),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "\$$price",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xffFEAD1D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
