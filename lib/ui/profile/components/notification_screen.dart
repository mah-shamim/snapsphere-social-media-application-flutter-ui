import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/comman_list_view.dart';
import 'package:tribpix/components/widgets/common_appbar.dart';
import 'package:tribpix/components/widgets/my_form_field.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/profile/controller/profile_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
        title:    MyRegularText(label:notificationLabelS,fontSize: 20,color: whiteColor,) ,
      ),
      body:  Padding(
        padding: nkMediumPadding(bottom: 0,top: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommanList(
                length: 3,
                physics: const AlwaysScrollableScrollPhysics(),
                child:(context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: containerBgColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: nkSmallPadding(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.close,color: containerLabelColor,size: AppDimensions.instance!.height*0.026,),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: AppDimensions.instance!.height*0.06,
                                  height: AppDimensions.instance!.height*0.06,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                SizedBox(width: AppDimensions.instance!.width*0.04,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MyRegularText(label:'Edein Vindain',fontSize: 14,color: whiteColor,align: TextAlign.start,),
                                      SizedBox(height: AppDimensions.instance!.height*0.01,),
                                      MyRegularText(label:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',fontSize: 10,color: whiteColor,maxlines: 4,align: TextAlign.start,),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: AppDimensions.instance!.height*0.01,),
                            MyRegularText(label:'3 Minutes Ago',fontSize: 10,color: containerLabelColor,align: TextAlign.start,),
                          ],
                        ),
                      ),
                    ),
                  );
                } ,
              ),

            ],
          ),
        ),
      ),
    ) );
  }


}
