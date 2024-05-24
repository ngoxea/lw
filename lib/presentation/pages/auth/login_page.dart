import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/pages/auth/widgets/login_form.dart';
import 'package:lw/presentation/pages/auth/widgets/login_oauth.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_text.dart';
import 'package:lw/presentation/widgets/lang_box.dart';
import 'package:lw/routes.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomWelcome(
              size: WelcomeSizes.medium,
              toolWidget: Positioned(
                top: Dimensions.yBezel,
                right: Dimensions.xBezel, 
                child: const LangBox()
              ),
              textWidget: Positioned(
                bottom: 28.h,
                width: Dimensions.wScreen,
                child: Text(
                  'XIN CHÀO', 
                  style: TextStyles.whiteWelcomeStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.yMedium),
              child: Text(
                'Thông tin đăng nhập', 
                style: TextStyles.blueBodyMedium
              ),
            ),
            SizedBox(
              width: Dimensions.wAuthForm, 
              child: Column(
                children: [
                  const LoginForm(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Dimensions.yLarge),
                    child: const LoginOauth(),
                  ),
                  const HyperlinkText(
                    hintText: 'Quên mật khẩu?', 
                    routeName: Routes.forgotPassword,
                  ),
                  SizedBox(height: Dimensions.ySmall),
                  Row(
                    children: [
                      Text(
                        'Bạn mới sử dụng ứng dụng? ', 
                        style: TextStyles.bodyMedium,
                      ),
                      const HyperlinkText(
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
    );
  }
}
