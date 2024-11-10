import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/images.dart';
import 'package:pro_multimedia/screens/splash/animation/cloud_animation.dart';
import 'package:pro_multimedia/screens/splash/widgets/circle_shadow.dart';
import 'package:pro_multimedia/screens/splash/widgets/dots_circle.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_big_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_small_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/splash_image.dart';
import 'package:pro_multimedia/screens/splash/widgets/title_splash.dart';

class SplashView4 extends StatefulWidget {
  const SplashView4({super.key});

  @override
  State<SplashView4> createState() => _SplashView4State();
}

class _SplashView4State extends State<SplashView4> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Stack(
      children: [
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: TitleSplash(
            firstLine: "Ustawiaj",
            secondLine: "przypomnienia!",
            boldWords: ["przypomnienia!"],
          ),
        ),
        Positioned(
          left: screenWidth * 0.04,
          top: screenHeight * 0.21,
          child: DotCircleWidget(
            size: 1,
            padding: 1.5,
          ),
        ),
        Positioned(
          left: screenWidth * 0.8,
          top: screenHeight * 0.39,
          child: DotCircleWidget(
            size: 1,
            padding: 2,
          ),
        ),
        Positioned(
          left: screenWidth * 0.78,
          top: 0,
          child: const SizedBox(
              width: 120,
              height: 60,
              child: MovingCloud(
                widget: CloudBig(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.1,
          top: screenHeight * 0.08,
          child: const SizedBox(
              width: 100,
              height: 50,
              child: MovingCloud(
                widget: CloudSmall(),
              )),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: screenHeight * 0.1,
          child: CircleShadow(
            radius: orientation == Orientation.portrait
                ? screenWidth * 0.4
                : screenHeight * 0.3,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: SizedBox(
            width: screenWidth,
            child: SplashImage(
              imagePath: AppImages.splashImg4,
            ),
          ),
        ),
      ],
    );
  }
}
