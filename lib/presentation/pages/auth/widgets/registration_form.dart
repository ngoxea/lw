import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_checkbox.dart';
import 'package:lw/presentation/widgets/custom_input.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomInput(hintText: 'Tên của bạn'),
        SizedBox(height: Dimensions.yBetweenInputs),
        const CustomInput(hintText: 'Tên tài khoản'),
        SizedBox(height: Dimensions.yBetweenInputs),
        const CustomInput(hintText: 'Số điện thoại hoặc Email'),
        SizedBox(height: Dimensions.yBetweenInputs),
        const CustomInput(hintText: 'Mật khẩu'),
        SizedBox(height: Dimensions.yBetweenInputs),
        Text(
          'Sử dụng 6 ký tự kết hợp các chữ cái.',
          style: TextStyles.blueBodyMedium,
        ),
        SizedBox(height: Dimensions.yLarge),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCheckbox(),
            SizedBox(width: Dimensions.ySmall),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Bằng cách đăng ký, bạn đồng ý với điều khoản\nsử dụng và chính sách quyền riêng tư của Love World',            
                  style: TextStyles.baseRoboto.copyWith(fontSize: 12.sp),
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              text: 'ĐĂNG KÝ',      
              width: Dimensions.wAuthButton,
              height: Dimensions.hAuthButton,
              backgroundAsset: 'assets/icons/asset163@4x1.svg',
              textStyle: TextStyles.whiteBodyMedium,
            ),
            CustomButton(
              text: 'HỦY BỎ',
              width: Dimensions.wAuthButton,
              height: Dimensions.hAuthButton,
              backgroundColor: ColorPalette.neutralWhiteColor,
              borderColor: ColorPalette.lightPrimaryColor,
              textStyle: TextStyles.blueBodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}