import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/general/colors.dart';
import 'package:pro_multimedia/screens/home/home_screen.dart';
import 'package:pro_multimedia/screens/splash/views/splash_view1.dart';
import 'package:pro_multimedia/screens/splash/views/splash_view2.dart';
import 'package:pro_multimedia/screens/splash/views/splash_view3.dart';
import 'package:pro_multimedia/screens/splash/views/splash_view4.dart';
import 'package:pro_multimedia/screens/splash/views/splash_view5.dart';
import 'package:pro_multimedia/screens/splash/views/splash_view6.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  _goToNextPage() {
    if (_currentIndex < 5) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _goToHome();
    }
  }

  _goToHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  Widget _viewSwitcher(int page) {
    switch (page) {
      case 0:
        return const SplashView1();
      case 1:
        return const SplashView2();
      case 2:
        return const SplashView3();
      case 3:
        return const SplashView4();
      case 4:
        return const SplashView5();
      case 5:
        return const SplashView6();
      default:
        return const SplashView1();
    }
  }

  Widget _naviButtons(int page) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          child: page != 5
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(Colors.grey),
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 12))),
                      onPressed: () => _showSkipDialog(context),
                      child: const Text(
                        "Pomiń",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 12),
                        backgroundColor: AppColors.button,
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 1),
                      ),
                      onPressed: _goToNextPage,
                      child: Text(
                        page == 5 ? "Zaczynamy" : "Dalej",
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              : Positioned(
                  bottom: 50,
                  left: MediaQuery.of(context).size.width / 2 - 80,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45, vertical: 12),
                      backgroundColor: AppColors.button,
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white, width: 1),
                    ),
                    onPressed: _goToHome,
                    child: const Text(
                      "Zaczynamy!",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  _showSkipDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pominięcie'),
          content: const Text(
              'Czy na pewno chcesz pominąć i przejść do strony startowej?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Nie'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Tak'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return PageView.builder(
            controller: _pageController,
            itemCount: 6,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return _buildSplashPage(index);
            },
          );
        },
      ),
    );
  }

  Widget _buildSplashPage(int pageNumber) {
    Orientation orintation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: orintation == Orientation.portrait
          ? Column(
              children: [
                Expanded(flex: 3, child: Container()),
                Expanded(flex: 13, child: _viewSwitcher(pageNumber)),
                Expanded(flex: 4, child: _naviButtons(pageNumber))
              ],
            )
          : Column(
              children: [
                Expanded(flex: 7, child: _viewSwitcher(pageNumber)),
                Expanded(flex: 2, child: _naviButtons(pageNumber))
              ],
            ),
    );
  }
}
