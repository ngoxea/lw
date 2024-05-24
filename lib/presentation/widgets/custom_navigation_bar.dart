import 'package:flutter/material.dart';
import 'package:lw/presentation/widgets/navigation_item.dart';
import 'package:lw/utils/dimensions.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.xBezel),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NavigationItem(                 
                text: 'Trang chủ',
                image: 'assets/icons/asset168@4x1.svg',
                routeName: '',
              ),
              NavigationItem(                 
                text: 'Tin tức',
                image: 'assets/icons/asset169@4x1.svg',
                routeName: '',
              ),
              NavigationItem(                 
                text: 'Lịch sử',
                image: 'assets/icons/asset170@4x1.svg',
                routeName: '',
              ),
              NavigationItem(                 
                text: 'Thông báo',
                image: 'assets/icons/asset171@4x1.svg',
                routeName: '',
              ),
              NavigationItem(                 
                text: 'Tài khoản',
                image: 'assets/icons/asset172@4x1.svg',
                routeName: '',
              ),
            ],
          ),
        )
      ],
    );
  }
}