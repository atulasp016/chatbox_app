import 'dart:async';

import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:chatbox_app/domain/utils/ui_helper.dart';
import 'package:chatbox_app/presentation/pages/Sign/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appLogo(),
            const SizedBox(height: 4),
            appName(
                textStyle: GoogleFonts.aclonica(
                    color: AppColors.secondaryBlack, fontSize: 40)),
          ],
        ),
      ),
    ));
  }
}
