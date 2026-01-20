import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.data,
  });

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        // title set

        CustomTextWidget(
          text: "${data["title"]}",
          fSize: 22,
          fW: FontWeight.w700,
        ),
        Container(
          height: 43,
          width: 43,
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.favorite, color: Colors.red),
        ),
      ],
    );
  }
}