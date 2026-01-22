import 'package:flutter/material.dart';
class CustomAppWidget extends StatelessWidget {
  const CustomAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset("assets/image/leading.png",color: Colors.black,),
      centerTitle: true,
      title: Image.asset("assets/image/dadagarments.png"),
      actions: [Icon(Icons.person, size: 33,color: Colors.black,)],
    );
  }
}