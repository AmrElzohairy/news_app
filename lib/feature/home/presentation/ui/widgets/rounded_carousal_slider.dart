import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RoundedCarouselSlider extends StatefulWidget {
  const RoundedCarouselSlider({super.key});

  @override
  State<RoundedCarouselSlider> createState() => _RoundedCarouselSliderState();
}

class _RoundedCarouselSliderState extends State<RoundedCarouselSlider> {
  int activeIndex = 0;
  final urlImage =
      'https://img.freepik.com/premium-vector/mobile-news-app-smartphone-interface-newspaper-feed-media-articles-breaking-daily-information-social-communication-concept_566886-9066.jpg';

  final carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          carouselController: carouselController,
          options: CarouselOptions(
            height: 250,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return buildImage(urlImage, index);
          },
        ),
        Positioned(bottom: 10.h, left: 150.w, child: buildIndicator()),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) => ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      color: Colors.grey.shade200,
      child: Image.network(urlImage, fit: BoxFit.cover, width: double.infinity),
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: 5,
    effect: ExpandingDotsEffect(
      dotHeight: 10,
      dotWidth: 10,
      activeDotColor: AppColors.primaryColor,
      dotColor: Colors.black26,
    ),
    onDotClicked: (index) {
      carouselController.animateToPage(index);
    },
  );
}
