import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.data,
  });

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextWidget(
          text:
          "Price :  "
              "${data["price"]}",
          fSize: 22,
          fW: FontWeight.w600,
        ),
        SizedBox(width: 10),
        CustomTextWidget(
          text: "${data["old_price"]}",
          tD: TextDecoration.lineThrough,
        ),
      ],
    );
  }
}