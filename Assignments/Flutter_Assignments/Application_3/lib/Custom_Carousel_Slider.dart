
import 'package:application_3/Carousel_Slider_Consts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  final List carouselImages;
  bool enlargeCenterPage;

  CustomCarouselSlider({
    super.key,
    required this.carouselImages,
    this.enlargeCenterPage = true,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: carouselImages.length,
      itemBuilder: (context, index, realIndex) {
        return Padding(
          padding: const EdgeInsets.only(left: 10 , right: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
              const BorderRadius.all(Radius.circular(12.0)),
              image: DecorationImage(
                image: NetworkImage(
                  CarouselSliderConsts.networkImagesList
                      .elementAt(index),
                ),
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 300,
        scrollDirection: Axis.horizontal,
        enableInfiniteScroll: true,
        enlargeCenterPage: enlargeCenterPage,
        autoPlay: true,
        animateToClosest: true,
        autoPlayAnimationDuration:
        const Duration(milliseconds: 500),
        initialPage: 0,
        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        autoPlayInterval: const Duration(seconds: 2),
        pauseAutoPlayInFiniteScroll: true,
        viewportFraction: 0.6,
      ),
    );
  }
}