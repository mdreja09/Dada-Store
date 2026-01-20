import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.data,
  });

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 10),

        CustomTextWidget(text: "${data["rating"]}"),
      ],
    );
  }
}