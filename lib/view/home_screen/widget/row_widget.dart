import 'package:flutter/material.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Popular Products",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "See all",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}