import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/common_appbar.dart';
import 'package:tribpix/components/widgets/my_form_field.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/profile/controller/profile_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class BilingualScreen extends StatefulWidget {
  const BilingualScreen({super.key});

  @override
  State<BilingualScreen> createState() => _BilingualScreenState();
}

class _BilingualScreenState extends State<BilingualScreen> {
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
        title:    MyRegularText(label:bilingualLabel,fontSize: 20,color: whiteColor,) ,
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
                      Column(
                        children: [
                          Image.network('https://images.unsplash.com/photo-1626836014893-37663794dca7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNhJTIwZmxhZ3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',height: AppDimensions.instance!.height*0.06,width: AppDimensions.instance!.height*0.06,),
                          SizedBox(height: AppDimensions.instance!.height*0.01,),
                          MyRegularText(label: 'English \u2022',color: whiteColor,)
                        ],
                      ),
                     SvgPicture.asset(translateIcon),
                      Column(
                        children: [
                          Image.network('https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/800px-Flag_of_India.svg.png',height: AppDimensions.instance!.height*0.06,width: AppDimensions.instance!.height*0.06,),
                          SizedBox(height: AppDimensions.instance!.height*0.01,),
                          MyRegularText(label: 'Hindi \u2022',color: whiteColor,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:AppDimensions.instance!.height*0.02,),
              MyFormField(controller: controller.transslateController, labelText: writeSomethingLabel)
            ],
          ),
        ),
      ),
    ) );
  }


}
