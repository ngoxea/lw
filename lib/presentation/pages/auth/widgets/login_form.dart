import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_input.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomInput(
          hintText: 'Số điện thoại hoặc Email',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: Dimensions.yBetweenInputs),
        const CustomInput(
          hintText: 'Mật khẩu',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32.h),
        CustomButton(
          text: 'ĐĂNG NHẬP',
          width: Dimensions.wAuthButton,
          height: Dimensions.hAuthButton,       
          textStyle: TextStyles.whiteBodyMedium,
          backgroundAsset: 'assets/icons/asset163@4x1.svg',
          callback: () => Navigator.pushNamed(context, Routes.welcome),
        ),
      ],
    );
  }
}