import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/pages/auth/widgets/password_change_form.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/presentation/widgets/hyperlink_image.dart';
import 'package:lw/utils/dimensions.dart';

class PasswordChangePage extends StatefulWidget {
  const PasswordChangePage({super.key});

  @override
  State<PasswordChangePage> createState() => _PasswordChangePageState();
}

class _PasswordChangePageState extends State<PasswordChangePage> {
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
            SizedBox(height: Dimensions.heightMedium),
            SizedBox(
              width: 310.w,
              child: const PasswordChangeForm()
            ),
          ],
        ),
      ),
    );
  }
}