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

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
        title:    MyRegularText(label:search,fontSize: 20,color: whiteColor,) ,
      ),
      body:  Padding(
        padding: nkMediumPadding(bottom: 0,top: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                },
                controller: controller.searchPersonController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: whiteColor,
                    size: 24,
                  ),
                  fillColor:containerBgColor,
                  filled: true,
                  isDense: true,
                  errorMaxLines: 3,
                  contentPadding: const EdgeInsets.all(16.0),
                  hintText: "Search People",
                  counterText: "",
                  labelStyle: const TextStyle(
                      color: whiteColor, fontFamily: 'Panton_Regular'),
                  hintStyle: const TextStyle(
                      color: secondaryTextColor,
                      fontFamily: 'Panton_Regular'),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                     BorderSide(color: containerBgColor, width: 1.0),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: containerBgColor, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: containerBgColor, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: AppDimensions.instance!.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyRegularText(label: 'Clear',fontSize: 16,color: Colors.red,),
                ],
              )
            ],
          ),
        ),
      ),
    ) );
  }


}
