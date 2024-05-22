import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/utils/dimensions.dart';

class CustomWelcome extends StatelessWidget {
  final double? width;
  final double? height;
  final double? padding;

  final double? logoWidth;
  final double? logoHeight;

  final Widget? toolWidget;
  final Widget? textWidget;

  const CustomWelcome({
    super.key, 
    this.width,
    this.height,
    this.padding,
    this.logoWidth,
    this.logoHeight,
    this.toolWidget,
    this.textWidget,
  });

  @override
  Widget build(BuildContext context) {
    final double currentWidget = width ?? Dimensions.widthScreen;
    final double currentHeight = height ?? Dimensions.heightScreen;
    return Container(
      width: currentWidget,
      height: currentHeight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/asset5@4x.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: SvgPicture.asset(
              'assets/icons/asset162@4x1.svg', 
              width: 185.w,
              height: 250.h,
            ),
          ),
          Positioned(
            top: padding ?? 160.h,
            width: currentWidget,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/asset159@4x1.svg', 
                width: logoWidth ?? 260.w,
                height: logoHeight ?? 185.h,
              ),
            ),
          ),
          if (currentHeight > Dimensions.heightScreen / 2)
          Positioned(
            right: 0,
            bottom: 0,
            child: SvgPicture.asset(
              'assets/icons/asset166@4x1.svg', 
              width: 350.w,
              height: 480.h,
            ),
          ),
          if (null != toolWidget) toolWidget!,
          if (null != textWidget) textWidget!,
        ],
      ),
    );
  }
}
