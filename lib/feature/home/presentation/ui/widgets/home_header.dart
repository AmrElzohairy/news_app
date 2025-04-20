import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/app_styles.dart';

import '../../../../../core/utils/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Column(
            children: [
              Text('Hello Anderson', style: AppStyles.font18SemiBoldWhite),
              Text('Have a nice day', style: AppStyles.font12RegularGrey),
            ],
          ),
          Spacer(),
          Container(
            width: 42.30.w,
            height: 42.30.h,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
                ),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1.92, color: AppColors.white),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x0881D8F1),
                  blurRadius: 9.63,
                  offset: Offset(0, 12.04),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x1181D8F1),
                  blurRadius: 76.91,
                  offset: Offset(0, 96.14),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
