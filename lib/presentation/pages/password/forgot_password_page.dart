import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/back_navigation.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                left: Dimensions.xBezel, 
                child: const BackNavigation()
              ),
            ),         
            Padding(
              padding: EdgeInsets.only(
                top: 120.h,
                left: Dimensions.xBezel,
                right: Dimensions.xBezel,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Quên mật khẩu?', 
                      textAlign: TextAlign.center,
                      style: TextStyles.blueHeadingLarge500
                    ),
                  ),
                  SizedBox(height: Dimensions.yMedium),
                  Text(
                    'Vui lòng nhâp địa chỉ email/Số điện thoại mà bạn muốn thông tin đặt lại mật khẩu của mình được gửi đến!',
                    maxLines: 2,
                    style: TextStyles.baseRoboto.copyWith(fontSize: 15.sp)
                  ),
                  SizedBox(height: 60.h),  
                  Text(
                    'Địa chỉ Email/Số điện thoại di động',
                    style: TextStyles.blueBodyMedium400,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.8, 
                            color: ColorPalette.neutralGrayColor
                          ),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.yLarge),
                  Center(
                    child: CustomButton(
                      width: Dimensions.wAuthForm,
                      text: 'GỬI YÊU CẦU',
                      height: Dimensions.hCustomButton,
                      backgroundAsset: 'assets/icons/asset195@4x1.svg',
                      textStyle: TextStyles.whiteBodyMedium,
                      callback: () => Navigator.pushNamed(context, Routes.changePassword),
                    ),
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}