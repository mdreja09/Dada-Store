import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_ecommerce/controller/auth/selling_type.dart';
import 'package:dada_ecommerce/controller/auth/slider.dart';
import 'package:dada_ecommerce/view/home_screen/widget/indicator_widget.dart';
import 'package:dada_ecommerce/view/home_screen/widget/text_field.dart';
import 'package:dada_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../controller/auth/categoty.dart';
import '../widgets/product_card.dart';

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
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfeC_VO82qKaUracW2tsC-3_OWbcnPWUNEhg&s',
  ];
  List p = [
    {
      "id": 2,
      "title": "Men's Sports Mesh Head Cap",
      "stock": "60",
      "sku": "CAP-SPT-MESH",
      "brand": "ActiveGear",
      "price": "550",
      "old_price": "700",
      "image": "products/WOY0mkqstqgfD144YQ63Lgfg56vi3FmSYqG4Gqsi.jpg",
      "rating": "4.5",
      "review_count": "102",
      "category": "Head CAP",
    },
  ];

  List sliderList = [];
  List categoryList = [];
  Map sellingType = {};

  fetchSlider() async {
    sliderList = await SliderController().getSliderData();

    log(" ${sliderList}");
    //sliderList.clear();
    setState(() {});
  }
  // Category API

  getCategoryData() async {
    categoryList = await CategoryController().getCategoryData();
    log("${categoryList}");
    setState(() {});
  }

  // Selling type API
  getSellingTypeData() async {
    sellingType = await SellingTypeController().getSellingTypeData();
    log("${sellingType}");
    setState(() {

    });
  }

  @override
  void initState() {
    fetchSlider();
    getCategoryData();
    getSellingTypeData();

    super.initState();
  }

  int cirrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/image/leading.png", color: Colors.black),
        centerTitle: true,
        title: Image.asset("assets/image/dadagarments.png"),
        actions: const [
          Icon(Icons.person, size: 33, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔍 Search bar section
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SearchWidget(),
              ),

              // 🖼️ Carousel slider
              sliderList.isEmpty
                  ? SizedBox()
                  : CarouselSlider(
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
                      items: sliderList.map((item) {
                        return Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              // this problem
                              image: NetworkImage(
                                'sliderList[item]["image"]',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),

              const SizedBox(height: 16),

              // 🟡 Indicator dots
              IndicatorWidget(imgList: imgList, currentIndex: currentIndex),

              const SizedBox(height: 21),

              // 📦 Title row
              CustomTextWidget(text: "Categories"),
              SizedBox(height: 20),

              // Categories
              SizedBox(
                height: 110,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  itemCount: categoryList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsGeometry.symmetric(horizontal: 2),

                        height: 110,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              ("https://b4.coderangon.com/api/storage/${categoryList[index]["image"]}"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        child: Container(
                          alignment: Alignment.center,
                          height: 18,
                          width: 90,
                          color: Color(0xff201E1FCF),
                          child: Center(
                            child: CustomTextWidget(
                              text: "${categoryList[index]["name"]}",
                              color: Colors.white,
                              fW: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Best Selling Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomTextWidget(text: "Best Selling"),
                  CustomTextWidget(text: " See All", color: Colors.amber),
                ],
              ),

              // Best Selling
              SizedBox(
                height: 261,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  itemCount: sellingType['hot-selling'] == null
                      ? 0
                      : sellingType['hot-selling'].length,

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductCardWidget(
                    data: sellingType["hot-selling"][index],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // New Arrival Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomTextWidget(text: "New Arrival"),
                  CustomTextWidget(text: "See all", color: Colors.amber),
                ],
              ),

              // New Selling
              SizedBox(
                height: 261,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  itemCount: sellingType['new-product'] == null
                      ? 0
                      : sellingType['new-product'].length,

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductCardWidget(
                    data: sellingType["new-product"][index],
                  ),
                ),
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
