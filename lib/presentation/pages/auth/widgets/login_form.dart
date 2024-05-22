import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_input.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomInput(hintText: 'Số điện thoại hoặc Email'),
        SizedBox(height: Dimensions.heightBetweenInput),
        const CustomInput(hintText: 'Mật khẩu'),
        SizedBox(height: 32.h),
        CustomButton(
          text: 'ĐĂNG NHẬP',
          width: 130.w,
          height: 38.h,
          backgroundAsset: 'assets/icons/asset163@4x1.svg',
          textStyle: TextStyles.baseRoboto.copyWith(
            color: ColorPalette.neutralWhiteColor,
            fontSize: 21.sp,
          ),
        ),
      ],
    );
  }
}