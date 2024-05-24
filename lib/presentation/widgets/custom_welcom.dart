import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/utils/dimensions.dart';

enum WelcomeSizes { small, medium, large }

class CustomWelcome extends StatelessWidget {
  final WelcomeSizes size;
  final Widget? toolWidget;
  final Widget? textWidget;
  final Widget? navWidget;

  const CustomWelcome({
    super.key, 
    this.size = WelcomeSizes.large,
    this.toolWidget,
    this.textWidget,
    this.navWidget,
  });

  @override
  Widget build(BuildContext context) {
    final sizeValues = _getSizeValues(size);
    return Container(
      width: Dimensions.wScreen,
      height: sizeValues['height']!,
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
            top: sizeValues['logoTop']!,
            width: Dimensions.wScreen,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/asset159@4x1.svg', 
                width: sizeValues['logoWidth']!,
                height: sizeValues['logoHeight']!,
              ),
            ),
          ),
          if (sizeValues['height']! > Dimensions.hScreen / 2)
            Positioned(
              right: 0,
              bottom: 0,
              child: SvgPicture.asset(
                'assets/icons/asset166@4x1.svg', 
                width: 350.w,
                height: 480.h,
              ),
            ),
          if (navWidget != null) navWidget!,
          if (toolWidget != null) toolWidget!,
          if (textWidget != null) textWidget!,
        ],
      ),
    );
  }

  Map<String, double> _getSizeValues(WelcomeSizes size) {
    switch (size) {
      case WelcomeSizes.medium:
        return {
          'height': 378.h,
          'logoTop': 92.h,
          'logoWidth': 264.w,
          'logoHeight': 184.h,
        };
      case WelcomeSizes.large:
        return {
          'height': Dimensions.hScreen,
          'logoTop': 160.h,
          'logoWidth': 260.w,
          'logoHeight': 185.h,
        };
      case WelcomeSizes.small:
      default:
        return {
          'height': 230.h,
          'logoTop': 72.h,
          'logoWidth': 185.w,
          'logoHeight': 130.h,
        };
    }
  }
}
