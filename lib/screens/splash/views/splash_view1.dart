import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/images.dart';
import 'package:pro_multimedia/screens/splash/animation/cloud_animation.dart';
import 'package:pro_multimedia/screens/splash/widgets/circle_shadow.dart';
import 'package:pro_multimedia/screens/splash/widgets/dots_circle.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_small_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/line_painter_1_line_2turns.dart';
import 'package:pro_multimedia/screens/splash/widgets/splash_image.dart';
import 'package:pro_multimedia/screens/splash/widgets/title_splash.dart';

class SplashView1 extends StatefulWidget {
  const SplashView1({super.key});

  @override
  State<SplashView1> createState() => _SplashView1State();
}

class _SplashView1State extends State<SplashView1> {
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
            firstLine: "Spędzaj czas",
            secondLine: "kreatywnie!",
            boldWords: ["kreatywnie!"],
          ),
        ),
        Positioned(
          top: screenHeight * 0.29,
          child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.32,
              child: CustomPaint(painter: LinePainter1Line2Turns())),
        ),
        Positioned(
          left: screenWidth * 0.18,
          top: screenHeight * 0.23,
          child: DotCircleWidget(
            size: 1.5,
            padding: 2.5,
          ),
        ),
        Positioned(
          left: screenWidth * 0.7,
          top: screenHeight * 0.3,
          child: DotCircleWidget(
            size: 1,
            padding: 4,
          ),
        ),
        Positioned(
          left: screenWidth * 0.8,
          top: screenHeight * 0.13,
          child: const SizedBox(
              width: 100,
              height: 50,
              child: MovingCloud(
                widget: CloudSmall(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.13,
          top: screenHeight * 0.2,
          child: const SizedBox(
              width: 100,
              height: 50,
              child: MovingCloud(
                widget: CloudSmall(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.1,
          top: screenHeight * 0.3,
          child: const Icon(
            Icons.circle_outlined,
            size: 12,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: screenWidth * 0.08,
          top: screenHeight * 0.33,
          child: const Icon(
            Icons.circle_outlined,
            size: 10,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: screenHeight * 0.05,
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
              imagePath: AppImages.splashImg1,
            ),
          ),
        ),
      ],
    );
  }
}
