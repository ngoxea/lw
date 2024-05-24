import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/pages/auth/widgets/registration_form.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_text.dart';
import 'package:lw/presentation/widgets/lang_box.dart';
import 'package:lw/routes.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomWelcome(
              size: WelcomeSizes.small,
              toolWidget: Positioned(
                top: Dimensions.yBezel,
                right: Dimensions.xBezel, 
                child: const LangBox()
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: Dimensions.yMedium,
                bottom: Dimensions.ySmall,
              ),
              child: Text(
                'ĐĂNG KÝ THÀNH VIÊN NGAY', 
                style: TextStyles.blueBodyMedium400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.xBezel,
                right: Dimensions.xBezel,
                bottom: Dimensions.yMedium,
              ),
              child: Text(
                'Để khám phá trọn vẹn những tính năng và thông tin hấp dẫn của app Love World',         
                style: TextStyles.bodySmall,
                textAlign: TextAlign.center,
                maxLines: 2,
              )
            ),
            SizedBox(
              width: Dimensions.wAuthForm,
              child: Column(
                children: [
                  const RegistrationForm(),
                  SizedBox(height: 32.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bạn đã có tài khoản? ', style: TextStyles.bodyMedium),
                      const HyperlinkText(hintText: 'Đăng nhập', routeName: Routes.login),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
