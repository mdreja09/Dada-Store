import 'package:flutter/material.dart';

class CustomTextWidget extends StatefulWidget {
  const CustomTextWidget({super.key, required this.text, this.maxLine, this.fSize, this.color, this.fW, this.tD, });
  final String text;
  final int? maxLine;
  final double ? fSize;
  final Color? color;
  final FontWeight ? fW;
 final TextDecoration? tD;
  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {


  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontSize: widget.fSize ?? 20,
        fontWeight: widget.fW ??  FontWeight.normal,
        color: widget.color ?? Colors.black,
        decoration: widget.tD ?? TextDecoration.lineThrough
      ),
    );
  }
}
