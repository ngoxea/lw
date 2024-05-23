import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_navigation_bar.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_image.dart';
import 'package:lw/presentation/widgets/lang_box.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomWelcome(
        toolWidget: Positioned(
          top: 50.h,
          left: 24.w,
          right: 24.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              Icon(Icons.menu, size: 34.h, color: ColorPalette.neutralWhiteColor),
              Wrap(
                children: [
                  const LangBox(),
                  SizedBox(width: Dimensions.widthBetweenIcon),
                  HyperlinkImage(
                    routeName: '',
                    image: 'assets/icons/asset167@4x1.svg',
                    height: 24.h ,
                  ),
                ]
              ),
            ],
          ),
        ),
        textWidget: Positioned(
          bottom: 260.h,
          width: Dimensions.widthScreen,
          child: Center(
            child: Column(
              children: [
                Text(
                  'CHÀO MỪNG BẠN\nĐẾN VỚI GIA ĐÌNH',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyles.whiteWelcom,
                ),
                Text(
                  'LOVE WORLD',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyles.baseRoboto.copyWith(
                    color: ColorPalette.neutralWhiteColor,
                    fontSize: 42.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]
            ),
          ),
        ),
        menuWidget: Positioned(
          bottom: 0,
          width: Dimensions.widthScreen,
          child: CustomNavigationBar(),
        )
      ),
    );
  }
}