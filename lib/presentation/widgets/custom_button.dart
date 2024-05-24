import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  final Color? backgroundColor;
  final String backgroundAsset;

  final Color? borderColor;
  final double? borderRadius;

  final double? width;
  final double? height;

  final Function()? callback;

  const CustomButton({
    super.key,
    this.text = 'Custom Button',
    this.textStyle,
    this.backgroundColor,
    this.backgroundAsset = '',
    this.borderColor,
    this.borderRadius,
    this.width,
    this.height,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
      return InkWell(
      onTap: callback ?? () { print('Tap CustomButton: $text!');},
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (backgroundAsset.isEmpty)
          Container(
            width: width,
            height: height ?? Dimensions.hCustomButton,
            decoration: BoxDecoration(
              color: backgroundColor ?? ColorPalette.neutralGrayColor,
              border: Border.all(color: borderColor ?? ColorPalette.neutralGrayColor),
              borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.rSmall),
            ),
          ),
          if (backgroundAsset.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.rSmall),
            child: SvgPicture.asset(
              backgroundAsset, 
              fit: BoxFit.cover,
              width: width,
              height: height,
            )
          ),
          Text(text, style: textStyle ?? TextStyles.bodyMedium),
        ],
      ),
    );
  }

}