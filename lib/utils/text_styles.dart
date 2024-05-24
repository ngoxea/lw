import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/utils/color_palette.dart';

class TextStyles {
  // Base text styles
  static const none = TextStyle(color: Colors.transparent);

  static final baseRoboto = TextStyle(
    color: ColorPalette.neutralBlackColor,
    fontSize: 19.sp,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    overflow: TextOverflow.ellipsis,
    height: 1.2,
  );

  // Body text styles
  static final bodyMedium = baseRoboto;
  static final bodySmall = baseRoboto.copyWith(fontSize: 17.sp);

  static final whiteBodyMedium = baseRoboto.copyWith(
    color: ColorPalette.neutralWhiteColor,
  );
  
  static final blueBodyMedium = baseRoboto.copyWith(
    color: ColorPalette.lightSecondaryColor,
  );

  static final blueBodyMedium400 = baseRoboto.copyWith(
    color: ColorPalette.lightSecondaryColor,
    fontWeight: FontWeight.w400,
  );

  // Heading text styles 
  static final headingMedium = baseRoboto.copyWith(
    fontSize: 24.sp, 
    fontWeight: FontWeight.w400,
  );

  static final blueHeadingLarge500 = baseRoboto.copyWith(
    color: ColorPalette.lightSecondaryColor,
    fontSize: 32.sp, 
    fontWeight: FontWeight.w500,
  );

  // Custom text styles
  static final whiteWelcomeStyle = baseRoboto.copyWith(
    color: ColorPalette.neutralWhiteColor,
    fontSize: 42.sp,
  );
  static final whiteWelcomeStyle500 = baseRoboto.copyWith(
    color: ColorPalette.neutralWhiteColor,
    fontSize: 42.sp,
    fontWeight: FontWeight.w500,
  );

  static final whiteNavigationStyle = baseRoboto.copyWith(
    color: ColorPalette.neutralWhiteColor,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400
  );
}