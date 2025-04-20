import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class RecommendedArticleWidget extends StatelessWidget {
  const RecommendedArticleWidget({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Text('Recommended Article', style: AppStyles.font16SemiBoldWhite),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Text('See All', style: AppStyles.font12BoldPrimary),
          ),
        ],
      ),
    );
  }
}