import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
class BlackTextWidget extends StatelessWidget {
  const BlackTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextWidget(
          text: "Color :",
          fW: FontWeight.w600,
          fSize: 22,
        ),
        SizedBox(width: 15),
        CustomTextWidget(
          text: "Black",
          fW: FontWeight.w400,
          fSize: 18,
          color: Colors.grey,
        ),
      ],
    );
  }
}