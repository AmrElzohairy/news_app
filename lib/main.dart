import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/routes/go_router.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_font.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          title: 'News App',
          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: AppColors.primaryColor,
            fontFamily: AppFont.nunitoSans,
          ),
        );
      },
    );
  }
}
