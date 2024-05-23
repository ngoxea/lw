import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/color_palette.dart';
import 'package:lw/utils/text_styles.dart';

class HyperlinkText extends StatelessWidget {
  final String hintText;
  final String routeName;

  final Color underlineColor;
  final TextStyle? hintStyle;
    
  const HyperlinkText({
    super.key,
    required this.routeName,
    this.hintText = 'Hyperlink text',
    this.underlineColor = ColorPalette.lightSecondaryColor,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { 
        print('Tap HyperlinkText: $hintText'); 
        if (Routes.getRoutes().containsKey(routeName)) {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Container(
        padding: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: underlineColor, width: .8)),
        ),
        child: Text(hintText, style: hintStyle ?? TextStyles.blueBodyMedium),
      ),
    );
  }
}