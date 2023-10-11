import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'home/home_screen.dart';
import 'home/home_screen.dart';
import 'users/login/slash-screen.dart';

class Introduce extends StatefulWidget {
  const Introduce({super.key});

  @override
  _IntroduceState createState() => _IntroduceState();
}

class _IntroduceState extends State<Introduce> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const Slash_Screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 17.0,
      color: kGrey500,
    );
    var pageDecoration = PageDecoration(
      footerPadding: EdgeInsets.only(
        top: displaySize(context).height * 0.05,
      ),
      titleTextStyle: const TextStyle(fontSize: 28.0, color: kBlack),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body: "Search and compare prices for flights around the world.",
          image: Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
                'assets/images/introduce/Flight-Booking-pana.svg',
                width: 350.0),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Booking",
          body: "Book a flight through simple steps and pay securely.",
          image: Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
                'assets/images/introduce/Flight-Booking-bro.svg',
                width: 350.0),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of last page",
          body: "Save your search and get notifications when prices change.",
          footer: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_Screen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(
                200,
                displaySize(context).height * 0.05,
              ),
            ),
            child: Text(
              "Enable Notification",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
                color: kWhite,
              ),
            ),
          ),
          image: Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
                'assets/images/introduce/Subscriber-bro.svg',
                width: 350.0),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      dotsFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(
          color: kGrey500,
          fontSize: 15,
        ),
      ),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: kGrey400,
        activeColor: kBlue,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
