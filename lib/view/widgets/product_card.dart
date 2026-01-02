import 'package:flutter/material.dart';

import 'custom_text.dart';
class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Column(
            children: [
              Container(
                height: 156,
                width: 173,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Image.asset(fit: BoxFit.fill, "assets/image/sari.png"),
              ),
              CustomTextWidget(
                text: "Party Borkha Abaya Koliza",
                fSize: 16,
                fW: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Row(
                  children: [
                    CustomTextWidget(
                      text: "2800",
                      fW: FontWeight.w500,
                      fSize: 18,
                    ),
                    SizedBox(width: 5),
                    CustomTextWidget(
                      text: "3200",
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
                    "Add to Card",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: 26,
            child: Image.asset("assets/image/offer.png"))
      ],
    );
  }
}