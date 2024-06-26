import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/presentation/pages/Sign/singup/signup.dart';
import 'package:chatbox_app/presentation/pages/message/message.dart';
import 'package:flutter/material.dart';
import 'presentation/pages/Sign/onboard/onboard.dart';
import 'presentation/pages/Sign/signin/signin.dart';
import 'presentation/pages/Splash/splash.dart';
import 'presentation/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatbox App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: MessagePage(),
    );
  }
}
