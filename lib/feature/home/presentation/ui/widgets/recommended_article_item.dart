import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/core/utils/app_styles.dart';

class RecommendedArticleItem extends StatelessWidget {
  const RecommendedArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 0.34.h,
        left: 3.w,
        right: 7.w,
        bottom: 12.h,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xFF363636),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.34),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              "assets/images/science.jpeg",
              width: 135.57.w,
              height: 150.91.h,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'The 12 most intriguing \nScience discoveries of 2021',
            style: AppStyles.font9SemiBoldWhite.copyWith(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/dehazed_icon.svg",
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(width: 5.w),
              Text(
                'Read',
                style: AppStyles.font12BoldWhite.copyWith(fontSize: 13.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
