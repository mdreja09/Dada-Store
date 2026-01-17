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
    this.lineThrough,

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
final TextDecoration ?lineThrough;
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
        decoration: TextDecoration.none




      ),
    );
  }
}
