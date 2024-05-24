import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/custom_button.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_image.dart';
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
              height: 230.h,
              padding: 72.h,
              logoWidth: 185.w,
              logoHeight: 130.w,
              toolWidget: Positioned(
                top: 50.h,
                left: 24.h,
                child: const HyperlinkImage(
                  image: 'assets/icons/asset196@4x1.svg',
                  routeName: '',
                ),
              ),
            ),
            SizedBox(height: 120.h,),
            SizedBox(
              width: 360.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Quên mật khẩu?', 
                      style: TextStyles.baseRoboto.copyWith(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorPalette.lightSecondaryColor,
                      )
                    ),
                  ),
                  SizedBox(height: Dimensions.heightLarge),
                  Text(
                    'Vui lòng nhâp địa chỉ email/Số điện thoại mà bạn muốn thông tin đặt lại mật khẩu của mình được gửi đến!',
                    maxLines: 2,
                    style: TextStyles.baseRoboto.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    )
                  ),
                  SizedBox(height: 64.h),  
                  Text('Địa chỉ Email/Số điện thoại di động',
                    style: TextStyles.baseRoboto.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: ColorPalette.lightSecondaryColor,
                    )
                  ),
                  SizedBox(
                    height: 40.h,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 0.8, color: ColorPalette.neutralGrayColor),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.heightMedium),
                  Center(
                    child: CustomButton(
                      width: 310.w,
                      height: Dimensions.heightButton,
                      backgroundAsset: 'assets/icons/asset195@4x1.svg',
                      text: 'GỬI YÊU CẦU',
                      textStyle: TextStyles.whiteBodyMedium,
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