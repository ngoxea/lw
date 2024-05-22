import 'package:flutter/material.dart';
import 'package:lw/utils/text_styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final int? maxLines;

  const CustomText({
    super.key,
    this.text = 'Custom text.',
    this.textAlign,
    this.textStyle,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      textAlign: textAlign,
      maxLines: maxLines, 
      style: textStyle ?? TextStyles.bodyMedium
    ); 
  }
}