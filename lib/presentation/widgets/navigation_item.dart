import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/dimensions.dart';
import 'package:lw/utils/text_styles.dart';

class NavigationItem extends StatelessWidget {
  final String text;
  final String image;
  final String routeName;
    
  const NavigationItem({
    super.key, 
    required this.text,
    required this.image,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { 
        print('Tap NavigationItem: $text'); 
        if (Routes.getRoutes().containsKey(routeName)) {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: SizedBox(
        width: 60.w,
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(image, height: Dimensions.heightIconMedium),
            Text(text, style: TextStyles.whiteNavigation)
          ],
        ),
      ),
    );
  }
}