import 'package:flutter/material.dart';
import 'package:lw/presentation/pages/password/widgets/change_password_form.dart';
import 'package:lw/presentation/widgets/back_navigation.dart';
import 'package:lw/presentation/widgets/custom_welcom.dart';
import 'package:lw/utils/dimensions.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
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
            SizedBox(height: Dimensions.yLarge),
            SizedBox(
              width: Dimensions.wAuthForm,
              child: const ChangePasswordForm()
            ),
          ],
        ),
      ),
    );
  }
}