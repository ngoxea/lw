import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_input.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class PasswordChangeForm extends StatelessWidget {
  const PasswordChangeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Đổi mật khẩu', 
          style: TextStyles.baseRoboto.copyWith(
            color: ColorPalette.lightSecondaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: Dimensions.heightMedium),
        const CustomInput(
          hintText: 'Mật khẩu mới *',
          textAlign: TextAlign.left,
          suffixIcon: true,
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        const CustomInput(
          hintText: 'Nhập lại mật khẩu mới *',
          textAlign: TextAlign.left,
          suffixIcon: true,
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        const CustomInput(
          hintText: 'Code *',
          textAlign: TextAlign.left,
          suffixIcon: true,
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        Row(
          children: [
            SvgPicture.asset('assets/icons/asset200@4x1.svg', width: 12.w, height: 12.h,),
            SizedBox(width: 5.w,),
            Expanded(
              child: Text(
                'Mật khẩu phải từ 8 đến 20 ký tự', 
                style: TextStyles.baseRoboto.copyWith(fontSize: 14.sp),
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
                style: TextStyles.baseRoboto.copyWith(fontSize: 14.sp),
              ),
            ),
          ],
        ),
        SizedBox(height: 170.h),
        CustomButton(
          height: Dimensions.heightButton,
          backgroundAsset: 'assets/icons/asset195@4x1.svg',
          text: 'XÁC NHẬN',
          textStyle: TextStyles.whiteBodyMedium,
        )
      ]
    );
  }
}