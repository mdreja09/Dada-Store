import 'package:flutter/material.dart';
class AppBarWidger extends StatelessWidget {
  const AppBarWidger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}