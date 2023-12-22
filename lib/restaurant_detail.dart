import 'package:flutter/material.dart';
import 'package:mit_slicing/food_card.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D0D0D),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/restaurant.jpg",
              height: 300,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xff0e1110),
                ),
                height: MediaQuery.of(context).size.height / 1.5,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 45, 30, 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xff13251b),
                              ),
                              height: 35,
                              child: const Center(
                                child: Text(
                                  "Popular",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff53E88B),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0xff13251b),
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.location_on,
                                      size: 20,
                                      color: Color(0xff53E88B),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundColor: const Color(0xff261211),
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      size: 20,
                                      color: Color(0xffFF1D1D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 33),
                        child: Row(
                          children: [
                            Text(
                              "Wijie Bar and Resto",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Color(0xff53E88B),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "19 Km",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff565857),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.star_half,
                              size: 20,
                              color: Color(0xff53E88B),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "19 Km",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff565857),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Text(
                              "While our online shop offers an array of Alaskan Red King Crab options such as legs, claws, and lump meat, there's an unparalleled delight in choosing the whole crab itself. Opting for the complete Alaskan Red King Crab isn't just about a meal; it's an immersive experience. From the anticipation of cracking open the shell to reveal its succulent, tender meat to the vibrant hues and intricate flavors hidden within, each part of the whole crab presents a sensory journey that celebrates the essence of seafood indulgence.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Popular Menu",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFF8E4C),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 30),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              FoodCard(),
                              FoodCard(),
                              FoodCard(),
                              FoodCard(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
