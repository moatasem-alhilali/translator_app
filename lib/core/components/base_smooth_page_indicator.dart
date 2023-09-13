import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '/core/themes/light_theme.dart';

class BaseSmoothPageIndicator extends StatelessWidget {
  const BaseSmoothPageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });
  final PageController controller;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      count: count,
      controller: controller,
      effect: const ExpandingDotsEffect(
        spacing: 8.0,
        dotWidth: 15.0,
        dotHeight: 6.0,
        strokeWidth: 1.5,
        dotColor: LightColors.primary,
        activeDotColor: Colors.grey,
      ),
    );
  }
}
