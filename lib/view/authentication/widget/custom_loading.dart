import 'package:flutter/material.dart';
class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 421,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1),
        color: Color(0xffF4A758),
      ),
      child: Center(
        child: CircularProgressIndicator(color: Colors.white,),
      ),
    );
  }
}