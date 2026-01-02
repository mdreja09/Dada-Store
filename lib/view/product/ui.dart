import 'dart:developer';

import 'package:dada_ecommerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../controller/auth/product_api.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/product_card.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List ProductList = [];
  bool isLoading = true;

  fetchData() async {
    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 3));
    var productList = await ProductGetController().getProduct();
    log("   ${productList.length}");
    isLoading = false;
    setState(() {

    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: Image.asset("assets/image/back.png"),
        centerTitle: true,
        title: Image.asset("assets/image/w_logo.png"),
        //title: Center(child: Text("Data"),) ,
        // title: Image.asset(height: 20, width: 120, "assets/image/w_logo.png"),
      ),

      body: isLoading == true
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              padding: EdgeInsetsGeometry.all(10),

              itemCount: ProductList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
              ),

              itemBuilder: (context, index) => ProductCardWidget(data: ProductList[index],),
            ),
    );
  }
}
