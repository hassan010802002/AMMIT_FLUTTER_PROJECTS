import 'package:application_3/Consts/Home_Screen_Consts/Home_Screen_Consts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/Home_Screen_Controller/Home_Screen_Controller.dart';

class CustomCarouselSlider extends StatelessWidget {
  bool enlargeCenterPage;
  Carousel_Controller carousel_controller = Get.put(Carousel_Controller());

  CustomCarouselSlider({
    super.key,
    this.enlargeCenterPage = true,
  });

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: carousel_controller,
      builder: (controller) {
        return carousel_controller.dataResults!.value.isEmpty
            ? const CircularProgressIndicator(
                strokeWidth: 3.5,
                color: Home_Screen_Consts.limeAccentColor,
                backgroundColor: Home_Screen_Consts.white70Color,
              )
            : CarouselSlider.builder(
                itemCount: carousel_controller.dataResults!.length,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: 450,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        image: DecorationImage(
                          image: NetworkImage(
                            Home_Screen_Consts.baseUrl +
                                carousel_controller
                                    .dataResults![index].posterPath!,
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
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  initialPage: 0,
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  autoPlayInterval: const Duration(seconds: 2),
                  pauseAutoPlayInFiniteScroll: true,
                  viewportFraction: 0.6,
                ),
              );
      },
    );
  }
}
