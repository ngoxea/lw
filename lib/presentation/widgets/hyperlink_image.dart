import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lw/routes.dart';
import 'package:lw/utils/dimensions.dart';

class HyperlinkImage extends StatelessWidget {
  final String image;
  final String routeName;

  final double? width;
  final double? height;
    
  const HyperlinkImage({
    super.key,  
    required this.image,
    required this.routeName,
    this.width,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { 
        print('Tap HyperlinkImage'); 
        if (Routes.getRoutes().containsKey(routeName)) {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: SvgPicture.asset(
        image, 
        width: width ?? Dimensions.wIconTool, 
        height: height ?? Dimensions.hIconTool,
      ),
    );
  }
}