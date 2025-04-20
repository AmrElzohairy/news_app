import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/recommended_article_item.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/recommended_article_widget.dart';
import 'package:news_app/feature/home/presentation/ui/widgets/vertical_artical_item.dart';

class RecommendedArticleListView extends StatelessWidget {
  const RecommendedArticleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          RecommendedArticleWidget(),
          const SizedBox(height: 20),
          SizedBox(
            height: 245.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: RecommendedArticleItem(),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          RecommendedArticleWidget(),
          const SizedBox(height: 20),
          VerticalArticalItem(),
        ],
      ),
    );
  }
}
