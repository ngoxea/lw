import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class LoginOauth extends StatelessWidget {
  const LoginOauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hoặc là đăng nhập bằng', style: TextStyles.blueBodyMedium),
        SizedBox(height: Dimensions.yMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              text: 'Google Oauth',
              width: 140.w,
              height: 37.h, 
              textStyle: TextStyles.none,
              borderRadius: 6.r,
              backgroundAsset: 'assets/icons/asset164@4x1.svg', 
            ),
            CustomButton(
              text: 'Facebook Oauth',
              width: 140.w,
              height: 37.h, 
              textStyle: TextStyles.none,
              borderRadius: 6.r,
              backgroundAsset: 'assets/icons/asset165@4x1.svg', 
            )
          ]
        ),
      ],
    );
  }
}