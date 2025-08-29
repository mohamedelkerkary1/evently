import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 174,
          width: double.infinity,
          padding: EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            color: ColorPallate.primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back ✨",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Mohamed Elkerkary",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage(AppAssets.brightnessIcn),
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Container(alignment: Alignment.center,
                        width: 35,
                        height: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Text(
                          "EN",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: ColorPallate.primaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  ImageIcon(AssetImage(AppAssets.mapIcn),color: Colors.white,),
                  Text("Cairo , Egypt",style: TextStyle(
                    fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
