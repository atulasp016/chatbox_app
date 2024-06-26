import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:flutter/material.dart';

Widget appLogo({
  Color color = const Color(0xff24786D),
  double width = 60,
  double height = 70,
}) {
  return SizedBox(
      width: width,
      height: height,
      child:
          Image.asset(AppImages.IC_APP_LOGO, fit: BoxFit.fill, color: color));
}

Widget appName({
  required TextStyle textStyle,
}) {
  return Text('Chatbox', style: textStyle);
}

Widget googleSignBTN({
  required VoidCallback onTap,
  Color? imageColor,
  required String iconImage,
  Color borderColor = Colors.black,
  Color bgColor = Colors.white,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: borderColor)),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 10, color: bgColor)),
          child: SizedBox(
            width: 25,
            height: 25,
            child: Image.asset(iconImage, color: imageColor, fit: BoxFit.fill),
          ),
        )),
  );
}

Widget outlinedBTN({
  required VoidCallback onTap,
  required String title,
  Color bgColor = Colors.white,
  Color textColor = Colors.white,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            title,
            style:
                mTextStyle16(mColor: textColor, mFontWeight: FontWeight.bold),
          ),
        )),
  );
}

Widget textBTN({
  required VoidCallback onTap,
  required String title,
  Color textColor = Colors.white,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Center(
      child: Text(
        title,
        style: mTextStyle14(mColor: textColor, mFontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget appDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 21.0),
    child: Row(
      children: [
        Flexible(
            child: Divider(
                height: 0.5, color: AppColors.outlineColor, endIndent: 11)),
        Text(
          'OR',
          style: mTextStyle12(
              mColor: AppColors.secondaryTextColor,
              mFontWeight: FontWeight.w500),
        ),
        Flexible(
            child: Divider(
                height: 0.5, color: AppColors.outlineColor, indent: 11)),
      ],
    ),
  );
}

Widget appTextField({
  required String title,
  required String hintText,
  obscureText = false,
  required TextEditingController controller,
}) {
  return SizedBox(
    height: 60,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: mTextStyle14(
              mFontWeight: FontWeight.w500, mColor: AppColors.primaryColor),
        ),
        SizedBox(
            height: 35,
            child: TextField(
              cursorHeight: 20,
              controller: controller,
              obscureText: obscureText,
              decoration: const InputDecoration(),
            )),
      ],
    ),
  );
}





