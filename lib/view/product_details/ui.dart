import 'package:dada_ecommerce/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
    );
  }
}
