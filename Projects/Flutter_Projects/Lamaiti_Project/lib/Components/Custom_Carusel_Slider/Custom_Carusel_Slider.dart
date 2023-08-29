import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  Widget Function(BuildContext, int, int)? itemBuilder;
  Axis scrollDirection;
  double height;
  double viewportFraction;

  CustomCarouselSlider({
    super.key,
    required this.itemBuilder,
    this.scrollDirection = Axis.horizontal,
    this.height = 35,
    this.viewportFraction = 0.2
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      itemBuilder: itemBuilder,
      options: CarouselOptions(
        pauseAutoPlayOnManualNavigate: true,
        height: height,
        scrollDirection: scrollDirection,
        enableInfiniteScroll: true,
        enlargeCenterPage: false,
        animateToClosest: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 500),
        initialPage: 0,
        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        autoPlayInterval: const Duration(seconds: 2),
        pauseAutoPlayInFiniteScroll: true,
        viewportFraction: viewportFraction,
      ),
    );
  }
}