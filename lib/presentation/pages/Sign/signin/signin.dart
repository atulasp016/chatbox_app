import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:chatbox_app/domain/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31, bottom: 11),
              child: Column(
                children: [
                  Text(
                    'Log in to Chatbox',
                    textAlign: TextAlign.center,
                    style: mTextStyle18(
                        mFontWeight: FontWeight.bold,
                        mColor: AppColors.mainBlack),
                  ),
                  const SizedBox(height: 11),
                  Text(
                    'Welcome back! Sign in using your social account or email to continue us',
                    textAlign: TextAlign.center,
                    style: mTextStyle14(mColor: AppColors.mainBlack),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 21, top: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  googleSignBTN(
                    onTap: () {},
                    iconImage: AppImages.IC_FACEBOOK,
                    borderColor: AppColors.secondaryBlack,
                    bgColor: AppColors.whiteColor,
                  ),
                  googleSignBTN(
                      onTap: () {},
                      iconImage: AppImages.IC_GOOGLE,
                      borderColor: AppColors.secondaryBlack,
                      bgColor: AppColors.whiteColor),
                  googleSignBTN(
                    onTap: () {},
                    iconImage: AppImages.IC_APPLE,
                    borderColor: AppColors.secondaryBlack,
                    bgColor: AppColors.whiteColor,
                    imageColor: AppColors.mainBlack,
                  ),
                ],
              ),
            ),
            appDivider(),
            appTextField(controller: emailController ,hintText: 'Enter your email', title: 'Your email'),
            const SizedBox(height: 16),
            appTextField(controller: passController, hintText: 'Enter your password', title: 'Password',obscureText: true),
            const SizedBox(height: 16),
            const Spacer(),
            outlinedBTN(
                onTap: () {},
                title: 'Log in',
                bgColor: AppColors.primaryColor,
                textColor: AppColors.whiteColor),
            Padding(
              padding: const EdgeInsets.only(top: 11, bottom: 21),
              child: textBTN(
                  onTap: () {},
                  title: 'Forgot password?',
                  textColor: AppColors.primaryColor),
            )
          ],
        ),
      ),
    ));
  }
}
