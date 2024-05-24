import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextAlign? textAlign;

  final Color? borderColor;
  final double? borderRadius;

  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;

  final bool suffixIcon;

  const CustomInput({
    super.key,
    this.hintText = 'Custom input',
    this.hintStyle,
    this.textAlign,
    this.borderColor,
    this.borderRadius,
    this.padding,
    this.width,
    this.height,
    this.suffixIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? Dimensions.hCustomInput,
      child: TextField(
        textAlign: textAlign ?? TextAlign.left,
        decoration: InputDecoration(   
          hintText: hintText,
          hintStyle: hintStyle ?? TextStyles.blueBodyMedium,
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorPalette.lightPrimaryColor),
            borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.rSmall),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorPalette.lightPrimaryColor),
            borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.rSmall)
          ),
          isDense: false,
          contentPadding: padding ?? EdgeInsets.symmetric(
            horizontal: Dimensions.xMedium,
            vertical: Dimensions.ySmall,
          ),
          suffixIconConstraints: BoxConstraints(maxWidth: 40.w, maxHeight: 24.h),
          suffixIcon: suffixIcon 
          ? Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SvgPicture.asset(
              'assets/icons/asset197@4x1.svg', 
              width: 24.w,
              height: 24.h,
            ),
          )
          : null,
        ),
      ),
    );
  }
}
