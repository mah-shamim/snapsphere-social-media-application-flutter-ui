import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/common_appbar.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/profile/controller/profile_controller.dart';
import 'package:tribpix/utills/const_string.dart';

class AccountPrivacyScreen extends StatefulWidget {
  const AccountPrivacyScreen({super.key});

  @override
  State<AccountPrivacyScreen> createState() => _AccountPrivacyScreenState();
}

class _AccountPrivacyScreenState extends State<AccountPrivacyScreen> {
  ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: appBgColor,
      appBar:AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.transparent,
        centerTitle:false,
        leading: Row(
          children: [
            SizedBox(width:  AppDimensions.instance!.width*0.04,),
            InkResponse(
                onTap: (){
                  Get.back();
                },
                child: Icon(Icons.arrow_back_outlined  , color: whiteColor,)),

          ],
        ),
        title:    MyRegularText(label:accountPrivacy,fontSize: 20,color: whiteColor,) ,
      ),
      body:  Padding(
        padding: nkMediumPadding(bottom: 0,top: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width:  AppDimensions.instance!.width,
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: (Column(
                  children: [
                    privacyRow(profileVisibilityLabel,(){
                    },visiblityToogle()),
                    containerSpacer(),
                    privacyRow(yourActivityLabel,(){
                    },activityToogle()),  containerSpacer(),
                    settingRow(yourPostLabel,(){
                    }),  containerSpacer(),
                    settingRow(allowFollowLabel,(){
                    }),



                  ],
                )

                )
              ),

            ],
          ),
        ),
      ),
    ) );
  }

  settingRow(label,onTap) {
    return InkWell(
      onTap:  onTap,
      child: Padding(
        padding: nkSmallPadding(left:  AppDimensions.instance!.height*0.02,right:  AppDimensions.instance!.height*0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyRegularText(label:label ,),
            Icon(Icons.arrow_forward_ios,size: 18,)
          ],
        ),
      ),
    );
  }

  privacyRow(label,onTap,widgetT) {
    return Padding(
      padding: nkSmallPadding(left:  AppDimensions.instance!.height*0.02,right:  AppDimensions.instance!.height*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyRegularText(label:label,),
         widgetT
        ],
      ),
    );
  }

  visiblityToogle(){
    return CupertinoSwitch(
      value: controller.isVisible.value,
      activeColor: buttonGradiantColor,
      onChanged: (value) {
        setState(() {
          controller.isVisible.value = value;
        });
      },
    );
  }


  activityToogle(){
    return CupertinoSwitch(
      value: controller.isActivity.value,
      activeColor: buttonGradiantColor,
      onChanged: (value) {
        setState(() {
          controller.isActivity.value = value;
        });
      },
    );
  }

  containerSpacer() {
    return Container(height: AppDimensions.instance!.height*0.002,color: appBgColor,);
  }

}
