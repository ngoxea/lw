import 'package:flutter/material.dart';
import 'package:lw/shared/utils/app_colors.dart';
import 'package:lw/shared/utils/app_sizes.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight weight;
  final double size;

  const Heading({
    super.key,
    this.text = 'This is a heading.',
    this.size = AppSizes.font20,
    this.color = AppColors.lightTextColor,
    this.weight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      overflow: TextOverflow.ellipsis,
    );
    return Text(text, style: textStyle);
  }
}