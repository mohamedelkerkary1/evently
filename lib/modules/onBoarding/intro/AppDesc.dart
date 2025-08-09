import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDesc extends StatelessWidget {
  const AppDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 40),
          Image.asset(AppAssets.titleImg, width: 159, height: 50),
          SizedBox(height: 28),
          Image.asset(AppAssets.beCreative, width: 361, height: 361),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Personalize Your Experience",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorPallate.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Row(
                  children: [
                    Text(
                      "Choose your preferred theme and language to\n get started with a comfortable, tailored\n experience that suits your style.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Language",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: ColorPallate.primaryColor,
                      ),
                    ),
                    Icon(Icons.language, color: ColorPallate.primaryColor),
                  ],
                ),
                SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Theme",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: ColorPallate.primaryColor,
                      ),
                    ),
                    Icon(
                      Icons.nightlight_round_outlined,
                      color: ColorPallate.primaryColor,
                    ),
                  ],
                ),
                SizedBox(height: 28,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/onBoardingScreen');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 121),
                    decoration: BoxDecoration(
                      color: ColorPallate.primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
