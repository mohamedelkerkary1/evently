import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:evently_7/modules/onBoarding/intro/intro_1.dart';
import 'package:evently_7/modules/onBoarding/intro/intro_2.dart';
import 'package:evently_7/modules/onBoarding/intro/intro_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [Intro1(), Intro2(), Intro3()],
          ),
          Container(
            alignment: Alignment(0, 0.90),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button
                  GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Image(
                      image: AssetImage("assets/icons/arrowback.png"),
                      width: 24,
                      height: 24,
                    ),
                  ),

                  // Page indicator
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ScaleEffect(activeDotColor: ColorPallate.primaryColor),
                  ),

                  // Next/Done button
                  onLastPage
                      ? GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Image(
                      image: AssetImage("assets/icons/arrownext.png"),
                      width: 24,
                      height: 24,
                    ),
                  )
                      : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Image(
                      image: AssetImage("assets/icons/arrownext.png"),
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}