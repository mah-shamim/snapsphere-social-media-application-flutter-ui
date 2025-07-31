import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/common_appbar.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/utills/const_string.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
        title:    MyRegularText(label:settingLabel,fontSize: 20,color: whiteColor,) ,
      ),
      body:  Padding(
        padding: nkMediumPadding(bottom: 0,top: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: AppDimensions.instance!.width,
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: nkSmallPadding(left:  AppDimensions.instance!.height*0.02,right:  AppDimensions.instance!.height*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: AppDimensions.instance!.height*0.06,
                            height: AppDimensions.instance!.height*0.06,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://www.indiafilings.com/learn/wp-content/uploads/2023/03/Can-a-single-person-own-a-firm-in-India.jpg'),
                                fit: BoxFit.fill,
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                          SizedBox(width: AppDimensions.instance!.width*0.04,),
                          Container(
                            width: AppDimensions.instance!.width*0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyRegularText(label: 'Daisy Tinsley',fontSize: 16,),
                                MyRegularText(label: 'DaisyTinsley1@gmail.com',color: containerLabelColor,),

                              ],
                            ),
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,size: 18,)

                    ],
                  ),
                ),
              ),
              SizedBox(height:  AppDimensions.instance!.height*0.02,),
              Container(
                width:  AppDimensions.instance!.width,
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: (Column(
                  children: [
                    settingRow(notificationLabel,(){
                      Get.toNamed(AppRoutes.notificationScreen);
                    }),
                    containerSpacer(),
                    settingRow(searchPeopleLabel,(){
                      Get.toNamed(AppRoutes.searchScreen);
                    }),
                    containerSpacer(),
                    settingRow(bilingualLabel,(){
                      Get.toNamed(AppRoutes.bilingualScreen);
                    }),
                    containerSpacer(),
                    settingRow(accountPrivacyLabel,(){
                      Get.toNamed(AppRoutes.accountPrivacyScreen);
                    }),
                    containerSpacer(),
                    settingRow(inviteFriendLabel,(){
                      Get.toNamed(AppRoutes.inviteScreen);
                    }),


                  ],
                )

                )
              ),
              SizedBox(height:  AppDimensions.instance!.height*0.02,),
              Container(
                width:  AppDimensions.instance!.width,
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: (Column(
                  children: [
                    settingRow(rateUsLabel,(){}),
                    containerSpacer(),
                    settingRow(giveFeedbackLabel,(){}),
                    containerSpacer(),
                    settingRow(privacyConditionLabel,(){}),
                    containerSpacer(),
                    settingRow(logOut,(){}),
                    containerSpacer(),
                    settingRow(deleteAccountLabel,(){}),
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

  containerSpacer() {
    return Container(height: AppDimensions.instance!.height*0.002,color: appBgColor,);
  }

}
