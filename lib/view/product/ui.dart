import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}
class _ProductScreenState extends State<ProductScreen> {
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

    );
  }
}


