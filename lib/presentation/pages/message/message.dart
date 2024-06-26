import 'package:chatbox_app/domain/utils/app_colors.dart';
import 'package:chatbox_app/domain/utils/app_images.dart';
import 'package:chatbox_app/domain/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomBarTextField(),
    ));
  }

  buildAppBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      titleSpacing: 0,
      title: ListTile(
        minVerticalPadding: 16,
        leading: Stack(
          children: [
            const CircleAvatar(
                radius: 26, backgroundImage: AssetImage(AppImages.PROFILE_IMG)),
            Positioned(
                right: 4,
                bottom: 4,
                child: CircleAvatar(
                    radius: 4, backgroundColor: AppColors.greenColor))
          ],
        ),
        title: Text('Alex Linderson',
            style: mTextStyle16(
                mFontWeight: FontWeight.bold, mColor: AppColors.mainBlack)),
        subtitle: Text('Active now',
            style: mTextStyle12(
                mColor: AppColors.secondaryTextColor,
                mFontWeight: FontWeight.bold)),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.videocam_outlined)),
      ],
    );
  }

  buildBottomBarTextField() {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Row(
        children: [
          Flexible(
            child: Container(height: 40,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(21)
              ),
              child: TextField(

                style: TextStyle(color: AppColors.whiteColor),
                controller: searchController,
                decoration: InputDecoration(
                    hintText: 'White your message',
                    hintStyle: mTextStyle12(mColor: AppColors.secondaryTextColor),
                    suffixIcon: Icon(
                      CupertinoIcons.doc_on_doc,
                      color: AppColors.secondaryTextColor,
                    ),
                    filled: true,
                    fillColor: AppColors.outlineColor,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide.none)),
              ),
            ),
          ),
          const SizedBox(width: 11),
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            child: Icon(
              Icons.send,
              color: AppColors.whiteColor,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
