import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:chatbox_app/domain/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.mainBlack,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 11, vertical: 11),
                      child: buildAppBar(
                          onTap: () {}, iconImage: AppImages.PROFILE_IMG),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      child: SizedBox(
                        height: 85,
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 11),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (_, index) {
                              return appUserProfileIcon(
                                  onTap: () {},
                                  iconImage: AppImages.PROFILE_IMG);
                            }),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(21),
                                topRight: Radius.circular(21))),
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 11),
                                width: 50,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: AppColors.outlineColor,
                                    borderRadius: BorderRadius.circular(21)),
                              ),
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 100,
                                itemBuilder: (_, index) {
                                  return appChatListTile();
                                })
                          ],
                        ))
                  ],
                ),
              ),
            )));
  }

  Widget buildAppBar({required String iconImage,required VoidCallback onTap}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: AppColors.whiteColor)),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 5, color: AppColors.secondaryBlack)),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(AppImages.IC_SEARCH,fit: BoxFit.fill),
                ),
              )),
        ),
        Text('Home',
            style: mTextStyle20(
                mFontWeight: FontWeight.bold, mColor: AppColors.whiteColor)),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
              shape: BoxShape.circle),
          child: Image.asset(iconImage,fit: BoxFit.fill),
        )

      ],
    );
  }


  Widget appUserProfileIcon({
    required VoidCallback onTap,
    Color? imageColor,
    required String iconImage,
    Color borderColor = Colors.black,
    Color bgColor = Colors.white,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: borderColor)),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: AppColors.whiteColor)),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(iconImage,
                        color: imageColor, fit: BoxFit.fill),
                  ),
                )),
          ),
          Text(
            'Atul',
            style: mTextStyle14(
                mColor: AppColors.whiteColor, mFontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }


  Widget appChatListTile() {
    return ListTile(
      minVerticalPadding: 16,
      leading: Stack(
        children: [
          const CircleAvatar(
              radius: 26, backgroundImage: AssetImage(AppImages.PROFILE_IMG)),
          Positioned(
              right: 4,
              bottom: 4,
              child:
              CircleAvatar(radius: 4, backgroundColor: AppColors.greenColor))
        ],
      ),
      title: Text('Alex Linderson',
          style: mTextStyle20(
              mFontWeight: FontWeight.bold, mColor: AppColors.mainBlack)),
      subtitle: Text('Hey! Can you join the meeting?',
          style: mTextStyle12(mColor: AppColors.secondaryTextColor)),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('2 min ago',
              style: mTextStyle12(mColor: AppColors.secondaryTextColor)),
          CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.secondaryColor,
            child: Text(
              '4',
              style: mTextStyle12(
                  mFontWeight: FontWeight.bold, mColor: AppColors.whiteColor),
            ),
          )
        ],
      ),
    );
  }
}
