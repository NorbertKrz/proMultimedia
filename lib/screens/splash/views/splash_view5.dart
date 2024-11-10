import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/images.dart';
import 'package:pro_multimedia/screens/splash/animation/cloud_animation.dart';
import 'package:pro_multimedia/screens/splash/widgets/circle_shadow.dart';
import 'package:pro_multimedia/screens/splash/widgets/dots_circle.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_big_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_small_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/splash_image.dart';
import 'package:pro_multimedia/screens/splash/widgets/title_splash.dart';

class SplashView5 extends StatefulWidget {
  const SplashView5({super.key});

  @override
  State<SplashView5> createState() => _SplashView5State();
}

class _SplashView5State extends State<SplashView5> {
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
            firstLine: "",
            secondLine: "Bądź na bieżąco!",
            boldWords: ["na", "bieżąco!"],
          ),
        ),
        Positioned(
          right: screenWidth * 0.05,
          top: screenHeight * 0.27,
          child: DotCircleWidget(
            size: 1.5,
            padding: 1,
          ),
        ),
        Positioned(
          left: screenWidth * 0.45,
          top: screenHeight * 0.1,
          child: DotCircleWidget(
            size: 1,
            padding: 5,
          ),
        ),
        Positioned(
          left: screenWidth * 0.6,
          top: screenHeight * 0.11,
          child: const SizedBox(
              width: 120,
              height: 60,
              child: MovingCloud(
                widget: CloudBig(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.45,
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
              imagePath: AppImages.splashImg5,
            ),
          ),
        ),
      ],
    );
  }
}
