import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/utils/dimensions.dart';

class BackNavigation extends StatelessWidget {
  final double? width;
  final double? height;

  const BackNavigation({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: SvgPicture.asset(
        'assets/icons/asset196@4x1.svg',
        width: width ?? Dimensions.wIconTool, 
        height: height ?? Dimensions.hIconTool,
      ),
    );
  }
}