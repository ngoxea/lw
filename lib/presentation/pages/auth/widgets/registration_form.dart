import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_checkbox.dart';
import 'package:lw/presentation/widgets/custom_input.dart';
import 'package:lw/presentation/widgets/custom_text.dart';
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
        const CustomInput(
          hintText: 'Tên của bạn', 
          textAlign: TextAlign.left
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        const CustomInput(
          hintText: 'Tên tài khoản', 
          textAlign: TextAlign.left
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        const CustomInput(
          hintText: 'Số điện thoại hoặc Email', 
          textAlign: TextAlign.left
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        const CustomInput(
          hintText: 'Mật khẩu', 
          textAlign: TextAlign.left,
        ),
        SizedBox(height: Dimensions.heightBetweenInput),
        const Text('Sử dụng 6 ký tự kết hợp các chữ cái.'),
        SizedBox(height: Dimensions.heightLarge),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCheckbox(),
            SizedBox(width: Dimensions.heightSmall),
            Expanded(
              child: CustomText(
                text: 'Bằng cách đăng ký, bạn đồng ý với điều khoản \nsử dụng và chính sách quyền riêng tư của Love World',            
                textStyle: TextStyles.baseRoboto.copyWith(fontSize: 11.5.sp),
                maxLines: 2,
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
              backgroundAsset: 'assets/icons/asset163@4x1.svg',
              width: 130.w,
              height: 32.h,
              textStyle: TextStyles.whiteBodyMedium,
            ),
            CustomButton(
              text: 'HỦY BỎ',
              width: 130.w,
              height: 32.h,
              backgroundColor: ColorPalette.lightBackgroundColor,
              borderColor: ColorPalette.lightPrimaryColor,
              textStyle: TextStyles.blueBodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}