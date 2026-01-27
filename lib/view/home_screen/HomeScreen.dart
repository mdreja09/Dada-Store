import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/view/home_screen/widget/text_field.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  // ✅ Direct image URLs (NOT google search links)
  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNeDD2D_YWisPRc7bXiKpJ4jIprj17vJFigw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmN98PVoIT1CuxyzOhwS1racP0k8dCUaHUZg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfeC_VO82qKaUracW2tsC-3_OWbcnPWUNEhg&s'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/image/leading.png",
          color: Colors.black,
        ),
        centerTitle: true,
        title: Image.asset("assets/image/dadagarments.png"),
        actions: const [
          Icon(Icons.person, size: 33, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            // 🔍 Search bar section
            TextFieldWidget(),

            // 🖼️ Carousel slider
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: imgList.map((imgUrl) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 15),

            // 🟡 Indicator dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == entry.key
                        ? Colors.amber
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // 📦 Title row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Popular Products",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


