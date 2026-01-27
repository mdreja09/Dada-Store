import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/view/home_screen/widget/indicator_widget.dart';
import 'package:dada_ecommerce/view/home_screen/widget/row_widget.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            // 🔍 Search bar section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search product",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 46,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.tune, size: 23),
                  ),
                ],
              ),
            ),

            // 🖼️ Carousel slider
            CarouselSlider(
              options: CarouselOptions(
                height: 180,
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
            IndicatorWidget(imgList: imgList, currentIndex: currentIndex),

            const SizedBox(height: 20),

            // 📦 Title row
            TitleWidget(),
            SizedBox(height: 20,),
            //  Container
            SizedBox(
              height: 110,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsetsGeometry.symmetric(horizontal: 2,),

                height: 90,
                width: 109,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}







