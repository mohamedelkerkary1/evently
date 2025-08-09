import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:evently_7/core/widgets/Custom_text_form_field.dart';
import 'package:evently_7/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Image.asset(AppAssets.logo, width: 136, height: 186),
            SizedBox(height: 24),
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ColorPallate.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorPallate.primaryColor,
                    decorationThickness: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            CustomButton(
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t Have Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: ColorPallate.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorPallate.primaryColor,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: Divider(color: ColorPallate.primaryColor)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorPallate.primaryColor,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: ColorPallate.primaryColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
