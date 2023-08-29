import 'package:lamaiti/Consts/Splash_One_Consts.dart';

class SplashModel {
  String imagePath, descriptionText;

  SplashModel({this.imagePath = "", this.descriptionText = ""});

  String getDescriptionText() => descriptionText;

  void setDescriptionText(value) {
    descriptionText = value;
  }

  String getImagePath() => imagePath;

  void setImagePath(String value) {
    imagePath = value;
  }
}

List<SplashModel> getSlides() {
  List<SplashModel> slides = <SplashModel>[];
  SplashModel model1 = SplashModel();

  model1.setImagePath(Splash_One_Consts.images[0]);
  model1.setDescriptionText(Splash_One_Consts.texts[0]);
  slides.add(model1);

  SplashModel model2 = SplashModel();

  model2.setImagePath(Splash_One_Consts.images[1]);
  model2.setDescriptionText(Splash_One_Consts.texts[1]);
  slides.add(model2);

  SplashModel model3 = SplashModel();

  model3.setImagePath(Splash_One_Consts.images[2]);
  model3.setDescriptionText(Splash_One_Consts.texts[2]);
  slides.add(model3);

  return slides;
}
