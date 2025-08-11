import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/routes/page_routes.dart';
import 'package:flutter/material.dart';

import '../../../core/theme_manager/color_pallate.dart';
import '../../../core/widgets/custom_button.dart';

class Forgetpass extends StatelessWidget {
  const Forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forget Password",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.forgetpass),
            SizedBox(height: 24,),
            CustomButton(
              color: ColorPallate.primaryColor,
              child: Text(
                "Reset Password",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, PageRoutesName.login);
              },
            ),

          ],
        ),
      ),
    );
  }
}
