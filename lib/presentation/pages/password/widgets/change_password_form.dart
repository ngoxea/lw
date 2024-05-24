import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_input.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Đổi mật khẩu', 
          style: TextStyles.blueBodyMedium400,
        ),
        SizedBox(height: Dimensions.yMedium),
        const CustomInput(
          hintText: 'Mật khẩu mới *',
          suffixIcon: true,
        ),
        SizedBox(height: Dimensions.yBetweenInputs),
        const CustomInput(
          hintText: 'Nhập lại mật khẩu mới *',
          suffixIcon: true,
        ),
        SizedBox(height: Dimensions.yBetweenInputs),
        const CustomInput(
          hintText: 'Code *',
          suffixIcon: true,
        ),
        SizedBox(height: Dimensions.yBetweenInputs),
        Row(
          children: [
            SvgPicture.asset('assets/icons/asset200@4x1.svg', width: 12.w, height: 12.h,),
            SizedBox(width: 5.w,),
            Expanded(
              child: Text(
                'Mật khẩu phải từ 8 đến 20 ký tự', 
                style: TextStyles.baseRoboto.copyWith(fontSize: 15.sp),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset('assets/icons/asset200@4x1.svg', width: 12.w, height: 12.h,),
            SizedBox(width: 5.w,),
            Expanded(
              child: Text(
                'Bao gồm số, chữ viết hoa, chữ viết thường', 
                style: TextStyles.baseRoboto.copyWith(fontSize: 15.sp),
              ),
            ),
          ],
        ),
        SizedBox(height: 170.h),
        CustomButton(
          height: Dimensions.hCustomButton,
          backgroundAsset: 'assets/icons/asset195@4x1.svg',
          text: 'XÁC NHẬN',
          textStyle: TextStyles.whiteBodyMedium,
        )
      ]
    );
  }
}