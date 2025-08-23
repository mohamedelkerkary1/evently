import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/routes/page_routes.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:evently_7/core/widgets/Custom_text_form_field.dart';
import 'package:evently_7/core/widgets/custom_button.dart';
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
                onPressed: () {
                  Navigator.pushNamed(context, PageRoutesName.forgetPassword);
                },
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
              color: ColorPallate.primaryColor,
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, PageRoutesName.layout);
              },
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t Have Account ?  ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  onTap : () =>
                      Navigator.pushNamed(context, PageRoutesName.register),
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
            SizedBox(height: 24),
            CustomButton(
              color: Colors.white,
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image.asset(
                      AppAssets.googleIcn,
                      width: 25,
                      height: 25,
                    ),
                  ),
                  Text(
                    "Login With Google",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorPallate.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
