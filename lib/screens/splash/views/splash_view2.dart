import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/images.dart';
import 'package:pro_multimedia/screens/splash/widgets/circle_shadow.dart';
import 'package:pro_multimedia/screens/splash/widgets/dots_circle.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/line_painter_2lines.dart';
import 'package:pro_multimedia/screens/splash/widgets/splash_image.dart';
import 'package:pro_multimedia/screens/splash/widgets/title_splash.dart';

class SplashView2 extends StatefulWidget {
  const SplashView2({super.key});

  @override
  State<SplashView2> createState() => _SplashView2State();
}

class _SplashView2State extends State<SplashView2> {
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
            firstLine: "Bierz udział",
            secondLine: "w wydarzeniach!",
            boldWords: ["Bierz", "udział"],
          ),
        ),
        Positioned(
          top: screenHeight * 0.29,
          child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.32,
              child: CustomPaint(painter: LinePainter2Lines())),
        ),
        Positioned(
          left: screenWidth * 0.14,
          top: screenHeight * 0.46,
          child: DotCircleWidget(
            size: 1.5,
            padding: 2,
          ),
        ),
        Positioned(
          left: screenWidth * 0.1,
          top: screenHeight * 0.12,
          child: DotCircleWidget(
            size: 1,
            padding: 4,
          ),
        ),
        Positioned(
          left: screenWidth * 0.28,
          top: screenHeight * 0.37,
          child: const Icon(
            Icons.circle_outlined,
            size: 12,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: screenWidth * 0.27,
          top: screenHeight * 0.4,
          child: const Icon(
            Icons.circle_outlined,
            size: 10,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: screenWidth * 0.32,
          top: screenHeight * 0.39,
          child: const Icon(
            Icons.star,
            size: 25,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: orientation == Orientation.portrait
              ? screenWidth * 0.2
              : screenWidth * 0.05,
          right: orientation == Orientation.portrait ? 0 : 0,
          top: orientation == Orientation.portrait
              ? screenHeight * 0.19
              : screenHeight * 0.05,
          child: CircleShadow(
            radius: orientation == Orientation.portrait
                ? screenWidth * 0.38
                : screenHeight * 0.3,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: SizedBox(
            width: screenWidth,
            child: SplashImage(
              imagePath: AppImages.splashImg2,
            ),
          ),
        ),
      ],
    );
  }
}
