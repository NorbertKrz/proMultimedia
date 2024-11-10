import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/images.dart';
import 'package:pro_multimedia/screens/splash/animation/cloud_animation.dart';
import 'package:pro_multimedia/screens/splash/widgets/circle_shadow.dart';
import 'package:pro_multimedia/screens/splash/widgets/dots_circle.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_big_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_small_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/line_painter_2turns.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/moon_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/splash_image.dart';
import 'package:pro_multimedia/screens/splash/widgets/title_splash.dart';

class SplashView3 extends StatefulWidget {
  const SplashView3({super.key});

  @override
  State<SplashView3> createState() => _SplashView3State();
}

class _SplashView3State extends State<SplashView3> {
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
            firstLine: "Poznawaj",
            secondLine: "nieodkryte szlaki!",
            boldWords: ["szlaki!"],
          ),
        ),
        Positioned(
          top: screenHeight * 0.22,
          child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.32,
              child: CustomPaint(painter: LinePainter2Turns())),
        ),
        Positioned(
          left: screenWidth * 0.16,
          top: screenHeight * 0.08,
          child: DotCircleWidget(
            size: 1,
            padding: 2,
          ),
        ),
        Positioned(
          left: screenWidth * 0.78,
          top: screenHeight * 0.03,
          child: DotCircleWidget(
            size: 1,
            padding: 2,
          ),
        ),
        Positioned(
          left: screenWidth * 0.78,
          top: 0,
          child: const SizedBox(
              width: 110,
              height: 50,
              child: MovingCloud(
                widget: CloudBig(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.8,
          top: screenHeight * 0.12,
          child: const SizedBox(
              width: 100,
              height: 50,
              child: MovingCloud(
                widget: CloudSmall(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.07,
          top: screenHeight * 0.04,
          child: SizedBox(
            width: 100,
            height: 50,
            child: Transform.rotate(angle: -pi / 4, child: const MoonPainter()),
          ),
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
              imagePath: AppImages.splashImg3,
            ),
          ),
        ),
      ],
    );
  }
}
