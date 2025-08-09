import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/routes/page_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, PageRoutesName.appDesc);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.logo,
          width: 136,
          height: 186,)
        ],
      ),
    );
  }
}
