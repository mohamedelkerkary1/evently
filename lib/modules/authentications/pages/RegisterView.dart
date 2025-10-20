import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/routes/page_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import

import '../../../core/theme_manager/color_pallate.dart';
import '../../../core/widgets/Custom_text_form_field.dart';
import '../../../core/widgets/custom_button.dart';

class Registerview extends StatelessWidget {
  const Registerview({super.key});

  // Add the _launchGoogle function here, inside the class but outside build method
  Future<void> _launchGoogle() async {
    final Uri url = Uri.parse('https://www.google.com');

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Register",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.logo, width: 136, height: 186),
            SizedBox(height: 24),
            CustomTextFormField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ImageIcon(AssetImage(AppAssets.personIcn)),
              ),
              hintText: "Name",
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ImageIcon(AssetImage(AppAssets.mailIcn)),
              ),
              hintText: "Email",
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ImageIcon(AssetImage(AppAssets.passIcn)),
              ),
              hintText: "Password",
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ImageIcon(AssetImage(AppAssets.passIcn)),
              ),
              hintText: "Re Password",
            ),
            SizedBox(height: 16),
            CustomButton(
              color: ColorPallate.primaryColor,
              child: Text(
                "Create Account",
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
            SizedBox(height: 16),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account ? ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ColorPallate.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorPallate.primaryColor,
                    decorationThickness: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
