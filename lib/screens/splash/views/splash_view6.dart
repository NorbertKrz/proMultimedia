import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/images.dart';
import 'package:pro_multimedia/screens/splash/animation/cloud_animation.dart';
import 'package:pro_multimedia/screens/splash/widgets/circle_shadow.dart';
import 'package:pro_multimedia/screens/splash/widgets/dots_circle.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_big_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/cloud_small_painter.dart';
import 'package:pro_multimedia/screens/splash/widgets/painters/line_painter_2diffturns.dart';
import 'package:pro_multimedia/screens/splash/widgets/splash_image.dart';
import 'package:pro_multimedia/screens/splash/widgets/title_splash.dart';

class SplashView6 extends StatefulWidget {
  const SplashView6({super.key});

  @override
  State<SplashView6> createState() => _SplashView6State();
}

class _SplashView6State extends State<SplashView6> {
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
            secondLine: "Złap swój rytm!",
            boldWords: ["swój", "rytm!"],
          ),
        ),
        Positioned(
          top: screenHeight * 0.27,
          child: SizedBox(
              width: screenWidth,
              height: screenHeight * 0.32,
              child: CustomPaint(painter: LinePainter2DifferentTurns())),
        ),
        Positioned(
          left: screenWidth * 0.05,
          top: screenHeight * 0.37,
          child: DotCircleWidget(
            size: 1,
            padding: 4.5,
          ),
        ),
        Positioned(
          left: screenWidth * 0.3,
          top: screenHeight * 0.1,
          child: DotCircleWidget(
            size: 1.5,
            padding: 2.5,
          ),
        ),
        Positioned(
          left: screenWidth * 0.08,
          top: screenHeight * 0.33,
          child: _reqtangle(),
        ),
        Positioned(
          left: screenWidth * 0.15,
          top: screenHeight * 0.08,
          child: const SizedBox(
              width: 120,
              height: 60,
              child: MovingCloud(
                widget: CloudBig(),
              )),
        ),
        Positioned(
          left: screenWidth * 0.3,
          top: screenHeight * 0.15,
          child: const SizedBox(
              width: 100,
              height: 50,
              child: MovingCloud(
                widget: CloudSmall(),
              )),
        ),
        Positioned(
          right: screenWidth * 0.18,
          top: screenHeight * 0.22,
          child: const Icon(
            Icons.circle_outlined,
            size: 12,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: screenWidth * 0.19,
          top: screenHeight * 0.25,
          child: const Icon(
            Icons.circle_outlined,
            size: 10,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: screenWidth * 0.11,
          top: screenHeight * 0.25,
          child: const Icon(
            Icons.star,
            size: 25,
            color: Color.fromARGB(134, 255, 255, 255),
          ),
        ),
        Positioned(
          left: screenWidth * 0.15,
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
              imagePath: AppImages.splashImg6,
            ),
          ),
        ),
      ],
    );
  }

  Widget _reqtangle() {
    return Container(
        width: 45,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ));
  }
}
