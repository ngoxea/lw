import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/utils/dimensions.dart';

class CustomOauth extends StatelessWidget {
  const CustomOauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Hoặc là đăng nhập bằng'),
        SizedBox(height: Dimensions.heightMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              text: '',
              backgroundAsset: 'assets/icons/asset164@4x1.svg', 
              width: 142.w,
              height: 37.h, 
            ),
            CustomButton(
              text: '',
              backgroundAsset: 'assets/icons/asset165@4x1.svg', 
              width: 142.w,
              height: 37.h, 
            )
          ]
        ),
      ],
    );
  }
}