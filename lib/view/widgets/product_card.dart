import 'dart:developer';

import 'package:flutter/material.dart';

import 'custom_text.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, this.data});

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    log("${data['title']}");
    return Stack(
      children: [
        Card(

          child: Column(
            children: [

              Container(
                height: 156,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Image.network

                  (fit: BoxFit.fitWidth,
                    "https://b4.coderangon.com/storage/${data['image']}"),
              ),
              CustomTextWidget(
                text: data['title'],
                fSize: 16,
                fW: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Row(
                  children: [
                    CustomTextWidget(
                      text: data['price'],
                      fW: FontWeight.bold,
                      fSize: 18,
                    ),
                    SizedBox(width: 5),
                    CustomTextWidget(
                      text: data['old_price'],
                      fSize: 14,
                      fW: FontWeight.w500,
                      tD: TextDecoration.lineThrough,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Container(
                height: 30,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(left: 26, child: Image.asset("assets/image/offer.png")),
      ],
    );
  }
}
