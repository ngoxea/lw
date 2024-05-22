import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/utils/color_palette.dart';

class TextStyles {
  // Base text styles
  static final baseRoboto = TextStyle(
    color: ColorPalette.lightTextColor,
    fontSize: 19.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    overflow: TextOverflow.ellipsis,
  );

  // Body text styles
  static final bodyMedium = baseRoboto;
  static final bodySmall = baseRoboto.copyWith(
    fontSize: 17.sp
  );

  static final blueBodyMedium = baseRoboto.copyWith(
    color: ColorPalette.lightSecondaryColor,
  );

  static final whiteBodyMedium = baseRoboto.copyWith(
    color: ColorPalette.neutralWhiteColor,
  );
  
  // Heading text styles 
  static final headingMedium = baseRoboto.copyWith(
    fontSize: 24.sp, 
    fontWeight: FontWeight.w400,
  );

   static final blueHeadingMedium = baseRoboto.copyWith(
    color: ColorPalette.lightSecondaryColor,
    fontSize: 24.sp, 
    fontWeight: FontWeight.w400,
  );

  // Custom text styles
  static final whiteWelcom = baseRoboto.copyWith(
    color: ColorPalette.neutralWhiteColor,
    fontSize: 42.sp,
  );
}