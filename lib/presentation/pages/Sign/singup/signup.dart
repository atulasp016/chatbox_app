import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:chatbox_app/domain/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();

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
              padding: const EdgeInsets.only(top: 31, bottom: 31),
              child: Column(
                children: [
                  Text(
                    'Sign up with Email',
                    textAlign: TextAlign.center,
                    style: mTextStyle18(
                        mFontWeight: FontWeight.bold,
                        mColor: AppColors.mainBlack),
                  ),
                  const SizedBox(height: 11),
                  Text(
                    'Get chatting with friends and family today by signing up for our chat app!',
                    textAlign: TextAlign.center,
                    style: mTextStyle14(mColor: AppColors.mainBlack),
                  ),
                ],
              ),
            ),
            appTextField(
                controller: emailController,
                hintText: 'Enter your nane',
                title: 'Your name'),
            const SizedBox(height: 16),
            appTextField(
                controller: passController,
                hintText: 'Enter your email',
                title: 'Your email'),
            const SizedBox(height: 16),
            appTextField(
                controller: emailController,
                hintText: 'Enter your password',
                title: 'Password',
                obscureText: true),
            const SizedBox(height: 16),
            appTextField(
                controller: passController,
                hintText: 'Enter your password',
                title: 'Confirm Password',
                obscureText: true),
            const SizedBox(height: 16),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 21.0),
              child: outlinedBTN(
                  onTap: () {},
                  title: 'Log in',
                  bgColor: AppColors.primaryColor,
                  textColor: AppColors.whiteColor),
            ),
          ],
        ),
      ),
    ));
  }
}
