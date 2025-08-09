import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40,),
            Image.asset(AppAssets.titleImg,width: 159,height: 59,),
            SizedBox(height: 44,),
            Image(image: AssetImage("assets/images/OnBoardingScreen/manager-desk.png")),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                children: [
                  Text("Effortless Event Planning",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: ColorPallate.primaryColor
                    )
                    ,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 44, 16, 0),
              child: Column(
                children: [
                  Text("Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                    )
                    ,)
                ],
              ),
            ),
          ],
        )
    );
  }
}
