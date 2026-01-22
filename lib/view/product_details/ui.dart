import 'dart:convert';
import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/controller/auth/product_details.dart';
import 'package:dada_ecommerce/view/product_details/widget/ColorContainer.dart';
import 'package:dada_ecommerce/view/product_details/widget/black_text.dart';
import 'package:dada_ecommerce/view/product_details/widget/container_size.dart';
import 'package:dada_ecommerce/view/product_details/widget/price_widget.dart';
import 'package:dada_ecommerce/view/product_details/widget/rating_widget.dart';
import 'package:dada_ecommerce/view/product_details/widget/title_widget.dart';
import 'package:dada_ecommerce/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/SizeContainer.dart';
import '../widgets/custom_text.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.pId});
  final int pId ;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<String> imgList = [];

  Map data = {};

  fetchData() async {
    data = await GetProductDetails().getData(id: widget.pId);
    if (data.isNotEmpty) {
      for (var i in data["gallery"]) {
        imgList.add(i);
      }
    }
    log("====Data : $data");
    setState(() {});
  }

  @override
  void initState() {

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
            items: imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                          "https://b4.coderangon.com/public/storage/$i",
                        ),
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
                // Title
                TitleWidget(data: data),
                Row(
                  children: [
                    CustomTextWidget(text: "SKU : "),
                    CustomTextWidget(text: "${data["sku"]}"),
                  ],
                ),
                Row(
                  children: [
                    CustomTextWidget(text: "Brand  : "),
                    CustomTextWidget(text: "${data["brand"]}"),
                  ],
                ),
                Row(
                  children: [
                    CustomTextWidget(text: "Category  : "),
                    CustomTextWidget(text: "${data["category"]}"),
                  ],
                ),
                Row(
                  children: [
                    CustomTextWidget(text: "Stock :  "),
                    CustomTextWidget(text: "${data["stock"]}"),
                  ],
                ),
                // Rating widget
                RatingWidget(data: data),

                // Price widget
                PriceWidget(data: data),
                SizedBox(height: 20),
                // Color Text
                BlackTextWidget(),
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
                ContainerSizeWidget(),
                SizedBox(height: 20),
                // Details
                CustomTextWidget(text: "${data["description"]}", maxLine: 3),
                CustomTextWidget(text: "${data["description"]}", maxLine: 3),
              ],
            ),
          ),

          //CustomTextWidget(text:"Party Abaya")
        ],
      ),
    );
  }
}
