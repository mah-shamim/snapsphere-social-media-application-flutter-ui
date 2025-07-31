import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/common_appbar.dart';
import 'package:tribpix/components/widgets/my_form_field.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/components/widgets/my_theme_button.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/profile/controller/profile_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
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
        title:    MyRegularText(label:inviteFriend,fontSize: 20,color: whiteColor,) ,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Center(child: SvgPicture.asset(celebrateIcon,height:  AppDimensions.instance!.height*0.4,width:   AppDimensions.instance!.width,fit: BoxFit.fitWidth,)),

            Padding(
              padding: nkMediumPadding(bottom: 0,top: 0,left:  AppDimensions.instance!.width*0.06,right:  AppDimensions.instance!.width*0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      inviteButton(googleIcon, () {}),
                      SizedBox(height:  AppDimensions.instance!.height*0.001,),
                      MyRegularText(label: 'Instagram')
                    ],
                  ),
                  Column(
                    children: [
                      inviteButton(googleIcon, () {}),
                      SizedBox(height:  AppDimensions.instance!.height*0.001,),
                      MyRegularText(label: 'Twitter')
                    ],
                  ),
                  Column(
                    children: [
                      inviteButton(googleIcon, () {}),
                      SizedBox(height:  AppDimensions.instance!.height*0.001,),
                      MyRegularText(label: 'Facebook')
                    ],
                  ),
                  Column(
                    children: [
                      inviteButton(googleIcon, () {}),
                      SizedBox(height:  AppDimensions.instance!.height*0.001,),
                      MyRegularText(label: 'Whatsapp')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height:  AppDimensions.instance!.height*0.08,),
            Padding(
              padding: nkMediumPadding(bottom: 0,top: 0,left:  AppDimensions.instance!.width*0.06,right:  AppDimensions.instance!.width*0.06),
              child: MyThemeButton(buttonText: 'Share', onPressed: () {}),
            ),
          ],
        ),
      ),
    ) );
  }

  inviteButton(image, onTap) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        padding: nkMediumPadding(),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: signInMethodColor,
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.fill,
          height: AppDimensions.instance!.height * 0.03,
          width: AppDimensions.instance!.width * 0.03,
        ),
      ),
    );
  }

}
