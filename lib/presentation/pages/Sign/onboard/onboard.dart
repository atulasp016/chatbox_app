import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:chatbox_app/domain/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.secondaryBlack,
      body: Padding(
        padding: EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appLogo(width: 16, height: 20, color: AppColors.whiteColor),
                  SizedBox(width: 4),
                  appName(
                      textStyle: mTextStyle14(
                          mColor: AppColors.whiteColor,
                          mFontWeight: FontWeight.bold))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Connect\nfriends',
                      style: mTextStyle68(mColor: AppColors.whiteColor),
                      children: [
                        TextSpan(
                            text: '\neasily &\nquickly',
                            style: mTextStyle68(
                                mColor: AppColors.yellowColor,
                                mFontWeight: FontWeight.bold))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 31),
                  child: Text(
                      textAlign: TextAlign.center,
                      'Our chat app is the perfect way to stay connected with friends and family.',
                      style:
                          mTextStyle14(mColor: AppColors.secondaryTextColor)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 11, top: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      googleSignBTN(
                        onTap: () {},
                        iconImage: AppImages.IC_FACEBOOK,
                        borderColor: AppColors.whiteColor,
                        bgColor: AppColors.secondaryBlack,
                      ),
                      googleSignBTN(
                          onTap: () {},
                          iconImage: AppImages.IC_GOOGLE,
                          borderColor: AppColors.whiteColor,
                          bgColor: AppColors.secondaryBlack),
                      googleSignBTN(
                          onTap: () {},
                          iconImage: AppImages.IC_APPLE,
                          borderColor: AppColors.whiteColor,
                          bgColor: AppColors.secondaryBlack),
                    ],
                  ),
                ),
                appDivider(),
                outlinedBTN(
                    onTap: () {},
                    title: 'Sign up within mail',
                    textColor: AppColors.secondaryBlack),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 31.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Existing account?\t',
                          style: mTextStyle14(mColor: AppColors.lowTextColor)),
                      textBTN(onTap: () {}, title: 'Log in'),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
