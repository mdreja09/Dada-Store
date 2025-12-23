import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text, this.maxLine, this.fSize, this.color, this.fW});
  final String text;
  final int? maxLine;
  final double? fSize;
  final Color? color;
  final FontWeight? fW;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fSize ?? 20,
        fontWeight: fW ??  FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }
}
