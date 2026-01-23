import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/view/home_screen/widget/custom_widget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;
  List<String> imgList = [
    'https://www.google.com/search?sca_esv=0b64f9733fed06e0&sxsrf=ANbL-n5OAHGZRxt9k4TudLTuMFfJmGLnkQ:1769099458296&udm=2&fbs=ADc_l-aN0CWEZBOHjofHoaMMDiKpaEWjvZ2Py1XXV8d8KvlI3vWUtYx0DZdicpfE1faGYenqWn-q4MFiFFtvJjTKeAVxBf9XF8ByrMpEedseJb6C24e7QdJQdIE3TPpl5mEwf0HZUp1chSl04q3NzUG-sivE9fh2upv_LUl1i41J2OLX0ntDV3FbKmN59pJf5BBarEFT9msi8Zx3tjpgPrbRkWHc8AvYww&q=product+image&sa=X&ved=2ahUKEwj66aCGyZ-SAxV9xzgGHWHKGqYQtKgLegQIFBAB&biw=1280&bih=585&dpr=1.5&aic=0'
        'https://www.google.com/search?sca_esv=0b64f9733fed06e0&sxsrf=ANbL-n5OAHGZRxt9k4TudLTuMFfJmGLnkQ:1769099458296&udm=2&fbs=ADc_l-aN0CWEZBOHjofHoaMMDiKpaEWjvZ2Py1XXV8d8KvlI3vWUtYx0DZdicpfE1faGYenqWn-q4MFiFFtvJjTKeAVxBf9XF8ByrMpEedseJb6C24e7QdJQdIE3TPpl5mEwf0HZUp1chSl04q3NzUG-sivE9fh2upv_LUl1i41J2OLX0ntDV3FbKmN59pJf5BBarEFT9msi8Zx3tjpgPrbRkWHc8AvYww&q=product+image&sa=X&ved=2ahUKEwj66aCGyZ-SAxV9xzgGHWHKGqYQtKgLegQIFBAB&biw=1280&bih=585&dpr=1.5&aic=0'
        'https://www.google.com/search?sca_esv=0b64f9733fed06e0&sxsrf=ANbL-n5OAHGZRxt9k4TudLTuMFfJmGLnkQ:1769099458296&udm=2&fbs=ADc_l-aN0CWEZBOHjofHoaMMDiKpaEWjvZ2Py1XXV8d8KvlI3vWUtYx0DZdicpfE1faGYenqWn-q4MFiFFtvJjTKeAVxBf9XF8ByrMpEedseJb6C24e7QdJQdIE3TPpl5mEwf0HZUp1chSl04q3NzUG-sivE9fh2upv_LUl1i41J2OLX0ntDV3FbKmN59pJf5BBarEFT9msi8Zx3tjpgPrbRkWHc8AvYww&q=product+image&sa=X&ved=2ahUKEwj66aCGyZ-SAxV9xzgGHWHKGqYQtKgLegQIFBAB&biw=1280&bih=585&dpr=1.5&aic=0',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/image/leading.png", color: Colors.black),
        centerTitle: true,
        title: Image.asset("assets/image/dadagarments.png"),
        actions: [Icon(Icons.person, size: 33, color: Colors.black)],
      ),


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search Product ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 46,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.tune, size: 22),
                  ),
                ],
              ),
            ),
            ListView(
              //shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),


                    //aspectRatio: .2,
                    height: 200.0,
                  ),
                  items: imgList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(image: NetworkImage('$i')),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),


              ],
            )
          ],
        ),
      ),

    );
  }
}
