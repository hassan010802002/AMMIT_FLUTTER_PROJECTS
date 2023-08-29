import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamaiti/Screens/LogIn/LogIn.dart';
import '../../Consts/Splash_One_Consts.dart';
import '../../Helper/Splash_One_Helper/Splash_Model.dart';

class Custom_Splash extends StatelessWidget {
  String text, image;
  Row editRow;

  Custom_Splash({
    super.key,
    required this.text,
    required this.image,
    required this.editRow,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSplashStatefull(text: text, image: image, editRow: editRow);
  }
}

class CustomSplashStatefull extends StatefulWidget {
  String text, image;
  Row editRow;

  CustomSplashStatefull(
      {super.key,
      required this.text,
      required this.image,
      required this.editRow});

  @override
  State<StatefulWidget> createState() => _CustomSplashStatefullState();
}

class _CustomSplashStatefullState extends State<CustomSplashStatefull> {
  static int _times = 0;
  Timer? _timer;
  List<SplashModel> slides = getSlides();
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentIndex < 3) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _controller.animateToPage(currentIndex,
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            alignment: Splash_One_Consts.stack_Alignment,
            children: [
              SvgPicture.string(
                Splash_One_Consts.large_Vector,
                width: Splash_One_Consts.vector_Width,
                height: Splash_One_Consts.vector_Height,
              ),
              PageView.builder(
                itemCount: slides.length,
                allowImplicitScrolling: true,
                controller: _controller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(slides.elementAt(currentIndex).imagePath),
                        width: Splash_One_Consts.image_Dimensions,
                        height: Splash_One_Consts.image_Dimensions,
                        fit: Splash_One_Consts.image_Fit,
                        repeat: Splash_One_Consts.image_Repeat,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 115),
                        child: Text(
                          slides.elementAt(currentIndex).descriptionText,
                          style: Splash_One_Consts.text1_Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: Splash_One_Consts.button_Top_Padding,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MyLogIn()));
              },
              style: Splash_One_Consts.button_Style,
              child: Splash_One_Consts.button_Child),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0, right: 5.0),
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                currentIndex == 0
                    ? SizedBox(
                        width: 50,
                        height: 50,
                      )
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            if (currentIndex > 0) {
                              currentIndex--;
                              widget.text = slides
                                  .elementAt(currentIndex)
                                  .descriptionText;
                              widget.image =
                                  slides.elementAt(currentIndex).imagePath;
                              widget.editRow =
                                  Splash_One_Consts.rows[currentIndex];
                            }
                          });
                        },
                        child: const Text(
                          "السابق",
                          style: Splash_One_Consts.text2_Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 90.0,
                    left: 90.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        slides.length, (index) => buildDot(index, context)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex < 2) {
                        currentIndex++;
                        widget.text = slides
                            .elementAt(currentIndex)
                            .descriptionText;
                        widget.image =
                            slides.elementAt(currentIndex).imagePath;
                        widget.editRow = Splash_One_Consts.rows[currentIndex];
                      }
                      if (currentIndex == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyLogIn()));
                      }
                    });
                  },
                  child: Text(
                    currentIndex != slides.length - 1 ? "التالي" : "ابداء",
                    style: Splash_One_Consts.text2_Style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: currentIndex == index ? 10 : 8,
      width: currentIndex == index ? 30 : 20,
      margin: EdgeInsets.only(right: 8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: Colors.white),
    );
  }
}
