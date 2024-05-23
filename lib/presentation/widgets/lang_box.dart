import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/utils/dimensions.dart';

class LangBox extends StatelessWidget {
  const LangBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () { print('Tap LangBox!'); },
          child: SvgPicture.asset(
            'assets/icons/asset160@4x1.svg',
            width: Dimensions.heightIconSmall,
            height: 22.h,
          ),
        ),
        SizedBox(width: Dimensions.widthBetweenIcon),
        InkWell(
          onTap: () { print('Tap LangBox!'); },
          child: SvgPicture.asset(
            'assets/icons/asset161@4x1.svg',
            width: Dimensions.heightIconSmall,
            height: Dimensions.heightIconSmall,
          ),
        ),
      ],
    );
  }
}
