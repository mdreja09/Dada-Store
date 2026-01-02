import 'package:dada_ecommerce/view/widgets/custom_text.dart';
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
      body: GridView.builder(
        padding: EdgeInsetsGeometry.all(10),

        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.9,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 8,
        ),

        itemBuilder: (context, index) => Card(
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
                fSize: 14,
                fW: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(

                  children: [
                    CustomTextWidget(
                      text: "2800",
                      fW: FontWeight.w500,
                      fSize: 18,
                    ),
                    SizedBox(width: 5,),
                    CustomTextWidget(
                      text: "3200",
                      fSize: 14,
                      fW: FontWeight.w500,
                      tD: TextDecoration.lineThrough,
                    ),
                  ],
                ),
              ),
              Container(
                
                height: 30,
              width: 85,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5)
              ),
                child: Center(child: Text("Add to Card",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
