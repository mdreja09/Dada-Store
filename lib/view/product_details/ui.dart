import 'dart:convert';
import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/controller/auth/product_details.dart';
import 'package:dada_ecommerce/view/product_details/widget/ColorContainer.dart';
import 'package:dada_ecommerce/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/SizeContainer.dart';
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
   Map data = {};

   fetchData ()async{
  data = await GetProductDetails().getData();
 log("====Data : $data");
}


   @override
  void initState() {
     fetchData();
    super.initState();
     fetchData();
  }





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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    CustomTextWidget(
                      text: 'Party Borkha Abaya Black',
                      fSize: 22,
                      fW: FontWeight.w700,
                    ),
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
                Row(
                  children: [
                    CustomTextWidget(text: "SKU :"),
                    CustomTextWidget(text: "API- SPI MESH")
                  ],
                ),
                Row(
                  children: [
                    CustomTextWidget(text: "Brand"),
                    CustomTextWidget(text: " Active Cay")
                  ],
                ),
                Row(
                  children: [
                    CustomTextWidget(text: "Category :"),
                    CustomTextWidget(text: " Party Abaya"),
                    
                  ],
                ),
                Row(
                  children: [
                    CustomTextWidget(text: "Stock :"),
                    CustomTextWidget(text: "550 PCS ")
                    
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),

                    CustomTextWidget(text: "(102 review)")
                  ],
                )

                ,Row(
                  children: [
                    CustomTextWidget(
                      text: "Price : 2800",
                      fSize: 22,
                      fW: FontWeight.w600,
                    ),
                    SizedBox(width: 10),
                    CustomTextWidget(
                      text: "3200",
                      tD: TextDecoration.lineThrough,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CustomTextWidget(
                      text: "Color :",
                      fW: FontWeight.w600,
                      fSize: 22,
                    ),
                    SizedBox(width: 15),
                    CustomTextWidget(
                      text: "Black",
                      fW: FontWeight.w400,
                      fSize: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 15),

                // Color Container
                ColorContainerWidget(),
                SizedBox(height: 30),

                // Size : 32
                Row(
                  children: [
                    CustomTextWidget(
                      text: " Size :    ",
                      fW: FontWeight.w600,
                      fSize: 22,
                    ),
                    CustomTextWidget(text: "32", color: Colors.grey),
                  ],
                ),
                SizedBox(height: 15),

                // Conatainer Size : 34, 36, 38
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 3,
                          color: Color(0xff0000001A),
                        ),
                      ),
                      child: Center(
                        child: CustomTextWidget(
                          text: "34",
                          fW: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 38,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 3,
                          color: Color(0xff0000001A),
                        ),
                      ),
                      child: Center(
                        child: CustomTextWidget(
                          text: "36",
                          fW: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 38,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 3,
                          color: Color(0xff0000001A),
                        ),
                      ),
                      child: Center(
                        child: CustomTextWidget(
                          text: "38",
                          fW: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 38,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 3,
                          color: Color(0xff0000001A),
                        ),
                      ),
                      child: Center(
                        child: CustomTextWidget(
                          text: "40",
                          fW: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 38,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          width: 3,
                          color: Color(0xff0000001A),
                        ),
                      ),
                      child: Center(
                        child: CustomTextWidget(
                          text: "42",
                          fW: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],

                ),
                SizedBox(height: 20,),
                CustomTextWidget(text: "Details"),
                CustomTextWidget(text: "Details"),

              ],
            ),
          ),

          //CustomTextWidget(text:"Party Abaya")
        ],
      ),
    );
  }
}
