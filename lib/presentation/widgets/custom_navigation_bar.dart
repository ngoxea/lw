import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/widgets/navigation_item.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92.h,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
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
      ),
    );
  }
}