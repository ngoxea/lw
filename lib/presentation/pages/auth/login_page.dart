import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/pages/auth/widgets/custom_oauth.dart';
import 'package:lw/presentation/pages/auth/widgets/login_form.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_text.dart';
import 'package:lw/presentation/widgets/custom_text.dart';
import 'package:lw/presentation/widgets/lang_box.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {    
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
                height: 388.h,
                padding: 92.h,
                toolWidget: Positioned(
                  top: 50.h,
                  right: 24.w, 
                  child: const LangBox()
                ),
                textWidget: Positioned(
                  bottom: 28.h,
                  width: Dimensions.widthScreen,
                  child: CustomText(
                    text: 'XIN CHÀO', 
                    textAlign: TextAlign.center,
                    textStyle: TextStyles.whiteWelcom,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.heightMedium),
              const Text('Thông tin đăng nhập'),
              SizedBox(height: Dimensions.heightMedium),
              SizedBox(
                width: 310.w, 
                child:  Column(
                  children: [
                    const LoginForm(),
                    SizedBox(height: Dimensions.heightLarge),
                    const CustomOauth(),
                    SizedBox(height: Dimensions.heightLarge),
                    const HyperlinkText(
                      hintText: 'Quên mật khẩu?', 
                      routeName: 'Click Hyperlink!',
                    ),
                    SizedBox(height: Dimensions.heightSmall),
                    const Row(
                      children: [
                        CustomText(text: 'Bạn mới sử dụng ứng dụng? '),
                        HyperlinkText(
                          hintText: 'Đăng ký', 
                          routeName: Routes.registration,
                        ),
                      ]
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
