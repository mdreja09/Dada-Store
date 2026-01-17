import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    this.maxLines,
    this.textAlign,
  });

  /// Required
  final String text;

  /// Optional
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 14,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}
