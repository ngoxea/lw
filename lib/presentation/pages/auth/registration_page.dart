import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/pages/auth/widgets/registration_form.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_text.dart';
import 'package:lw/presentation/widgets/custom_text.dart';
import 'package:lw/presentation/widgets/lang_box.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.lightBackgroundColor,
      body: SingleChildScrollView(
        child: DefaultTextStyle(       
          style: TextStyles.blueBodyMedium,
          child: Column(
            children: [
              CustomWelcome(
                height: 230.h,
                padding: 72.h,
                logoWidth: 185.w,
                logoHeight: 130.h,
                toolWidget: Positioned(
                  top: 50.h,
                  right: 24.w, 
                  child: const LangBox()
                ),
              ),
              SizedBox(height: Dimensions.heightMedium),
              Text(
                'ĐĂNG KÝ THÀNH VIÊN NGAY', 
                style: TextStyles.blueHeadingMedium
              ),
              SizedBox(height: Dimensions.heightSmall),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                child: CustomText(
                  text: 'Để khám phá trọn vẹn những tính năng và thông tin hấp dẫn của app Love World',
                  textAlign: TextAlign.center,
                  textStyle: TextStyles.bodySmall,
                  maxLines: 2,
                )
              ),
              SizedBox(height: Dimensions.heightMedium),
              SizedBox(
                width: 310.w,
                child: Column(
                  children: [
                    const RegistrationForm(),
                    SizedBox(height: 32.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: 'Bạn đã có tài khoản? '),
                        HyperlinkText(hintText: 'Đăng nhập', routeName: Routes.login),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
