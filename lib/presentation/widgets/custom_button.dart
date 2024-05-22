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
  });

  @override
  Widget build(BuildContext context) {
      return InkWell(
      onTap: () { 
        print('Tap CustomButton: $text');   
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (backgroundAsset.isEmpty)
          Container(
            width: width,
            height: height ?? Dimensions.heightButton,
            decoration: BoxDecoration(
              color: backgroundColor ?? ColorPalette.neutralGrayColor,
              border: Border.all(color: borderColor ?? ColorPalette.neutralGrayColor),
              borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.radiusSmall),
            ),
          ),
          if (backgroundAsset.isNotEmpty)
          ClipRRect(
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