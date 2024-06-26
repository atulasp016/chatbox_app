import 'package:chatbox_app/presentation/pages/Splash/splash.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String SPLASH_PAGE = '/';
  static const String ONBOARD_PAGE = '/onboard';
  static const String SIGNIN_PAGE = '/signIn';
  static const String SIGNUP_PAGE = '/signup';
  static const String HOME_PAGE = '/home';
  static const String DETAIL_PAGE = '/detail';

  static Map<String, Widget Function(BuildContext)> routesMap() => {
        AppRoutes.SPLASH_PAGE: (context) => SplashPage(),
      };
}
