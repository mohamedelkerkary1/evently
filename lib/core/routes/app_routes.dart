import 'package:evently_7/core/routes/page_routes.dart';
import 'package:evently_7/modules/authentications/pages/login_view.dart';
import 'package:evently_7/modules/onBoarding/intro/AppDesc.dart';
import 'package:evently_7/modules/onBoarding/onBoardingscreen.dart';
import 'package:evently_7/modules/splashScreen/splashView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
        return MaterialPageRoute(builder: ( _) => const SplashView());

      case PageRoutesName.appDesc:
        return MaterialPageRoute(builder: ( _) => const AppDesc());

      case PageRoutesName.onboardingScreen:
        return MaterialPageRoute(builder: ( _) => const Onboardingscreen());

      case PageRoutesName.login:
        return MaterialPageRoute(builder: ( _) => const LoginView());

      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}