import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
class ContainerSizeWidget extends StatelessWidget {
  const ContainerSizeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 38,
          width: 52,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              width: 3,
              color: Color(0xff0000001A),
            ),
          ),
          child: Center(
            child: CustomTextWidget(
              text: "34",
              fW: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          height: 38,
          width: 52,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              width: 3,
              color: Color(0xff0000001A),
            ),
          ),
          child: Center(
            child: CustomTextWidget(
              text: "36",
              fW: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          height: 38,
          width: 52,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              width: 3,
              color: Color(0xff0000001A),
            ),
          ),
          child: Center(
            child: CustomTextWidget(
              text: "38",
              fW: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          height: 38,
          width: 52,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              width: 3,
              color: Color(0xff0000001A),
            ),
          ),
          child: Center(
            child: CustomTextWidget(
              text: "40",
              fW: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 15),
        Container(
          height: 38,
          width: 52,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              width: 3,
              color: Color(0xff0000001A),
            ),
          ),
          child: Center(
            child: CustomTextWidget(
              text: "42",
              fW: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}