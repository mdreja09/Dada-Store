import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<String> pl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt-5FfM5yht0jMTYezm51vby6HxOU_XJ3gIw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6u0FZEikQ-PM-bu4mTtTZ95W8kFz_nrmM2A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlc19Yvl43P9frY2f4zNl5_C45p66uG9HVKQ&s",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: Center(child: Text("Product Details")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Positioned(
                  child: Card(
                    color: Color(0xffF6F6F6),
                    child: Card(child: Image.asset("assets/image/shop1.png")),
                  ),
                ),
                Positioned(
                  right: 5,

                  child: Container(
                    height: 13,
                    width: 13,
                    color: Color(0xffF4A758),

                    child: Image.asset("assets/image/shoping.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 220.0,

              viewportFraction: .8,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
            ),
            items: pl.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage("${i}"),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    CustomTextWidget(text: 'Paly Brkha Abaya Black',fSize: 22,fW: FontWeight.w700,),
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


