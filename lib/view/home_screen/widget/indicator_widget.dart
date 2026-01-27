import 'package:flutter/material.dart';
class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
    required this.imgList,
    required this.currentIndex,
  });

  final List<String> imgList;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.asMap().entries.map((entry) {
        return Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == entry.key
                ? Colors.amber
                : Colors.grey,
          ),
        );
      }).toList(),
    );
  }
}