import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 40),
          Image.asset(AppAssets.titleImg, width: 159, height: 50),
          SizedBox(height: 38),
          Image(
            image: AssetImage(
              "assets/images/OnBoardingScreen/being-creativeintro3.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 38, 16, 0),
            child: Row(
              children: [
                Text(
                  "Connect with Friends & Share Moments",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: ColorPallate.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 38, 16, 0),
            child: Column(
              children: [
                Text(
                  "Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
