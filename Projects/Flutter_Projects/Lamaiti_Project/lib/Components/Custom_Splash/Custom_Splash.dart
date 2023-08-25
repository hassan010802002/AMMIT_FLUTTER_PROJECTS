import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamaiti/Screens/LogIn/LogIn.dart';
import '../../Consts/Splash_One_Consts.dart';

class Custom_Splash extends StatelessWidget {
   String text, image;
   Row editRow;

   Custom_Splash(
      {super.key,
      required this.text,
      required this.image,
      required this.editRow,});

  @override
  Widget build(BuildContext context) {
    return CustomSplashStatefull(
      text: text,
      image: image,
      editRow: editRow
    );
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Splash_One_Consts.stack_Alignment,
          children: [
            SvgPicture.string(
              Splash_One_Consts.large_Vector,
              width: Splash_One_Consts.vector_Width,
              height: Splash_One_Consts.vector_Height,
            ),
            Image(
              image: AssetImage(widget.image),
              width: Splash_One_Consts.image_Dimensions,
              height: Splash_One_Consts.image_Dimensions,
              fit: Splash_One_Consts.image_Fit,
              repeat: Splash_One_Consts.image_Repeat,
            ),
          ],
        ),
        Text(
          widget.text,
          style: Splash_One_Consts.text1_Style,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: Splash_One_Consts.button_Top_Padding,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyLogIn()));
              },
              style: Splash_One_Consts.button_Style,
              child: Splash_One_Consts.button_Child),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0, right: 10.0),
          child: Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      if (_times > 0) {
                        _times--;
                        widget.text = Splash_One_Consts.texts[_times];
                        widget.image = Splash_One_Consts.images[_times];
                        widget.editRow = Splash_One_Consts.rows[_times];
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
                  child: widget.editRow,
                ),
                 TextButton(
                  onPressed: () {
                    setState(() {
                      if (_times < 3) {
                        _times++;
                        widget.text = Splash_One_Consts.texts[_times];
                        widget.image = Splash_One_Consts.images[_times];
                        widget.editRow = Splash_One_Consts.rows[_times];
                      }
                    });
                  },
                  child: const Text(
                    "التالي",
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
}
