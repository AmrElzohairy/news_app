import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/home_header.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/recommended_article_widget.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/rounded_carousal_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    HomeHeader(),
                    const SizedBox(height: 30),
                    RoundedCarouselSlider(),
                    const SizedBox(height: 30),
                    TabBar(
                      indicatorColor: AppColors.primaryColor,
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      labelStyle: AppStyles.font12BoldWhite,
                      labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                      tabs: const [
                        Tab(text: 'Science'),
                        Tab(text: 'Environment'),
                        Tab(text: 'Animals'),
                        Tab(text: 'Travel'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    RecommendedArticleWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
