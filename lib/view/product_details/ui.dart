import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<String> pl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt-5FfM5yht0jMTYezm51vby6HxOU_XJ3gIw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6u0FZEikQ-PM-bu4mTtTZ95W8kFz_nrmM2A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlc19Yvl43P9frY2f4zNl5_C45p66uG9HVKQ&s"
] ; @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child: Text("Product Details"),),actions: [
          Icon(Icons.shopping_bag_outlined),
         Padding(
           padding: const EdgeInsets.only(right: 20),
           child: Card(color: Colors.red,child: Image.asset("assets/image/shoping.png"),),
         )

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
                          image: NetworkImage("${i}")),
                    ),
                    //child: Text('text $i', style: TextStyle(fontSize: 16.0)),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
