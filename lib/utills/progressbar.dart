import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/components/widgets/my_theme_button.dart';
import 'package:tribpix/theme/color/colors.dart';


class ProgressBar {

  static void showProgressBarApi(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(
        child: Container(
          width: 150.0,
          height: 130.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(
                height: 30,
              ),
              CircularProgressIndicator(
                color: appBgColor,
              ),
              SizedBox(
                height: 30,
              ),
              MyRegularText(label: 'Loading', fontSize: 18),
            ],
          ),
        ),
      ),
    );
  }

  static void hideProgressBar() {
    Get.back();
  }


  static void showExitDiloag(Function()? onPressed,text) {
    Get.generalDialog(
      transitionDuration: const Duration(milliseconds: 500),

      transitionBuilder: (context, animation, secondaryAnimation, child) {
        var curve = Curves.fastLinearToSlowEaseIn.transform(animation.value);
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            reverseCurve: Curves.easeInSine,
            curve: Curves.easeInSine,
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
              height: Get.height * 0.2,
              width: Get.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisSize: MainAxisSize.min,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: MyRegularText(
                      label: text,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: Get.width * 0.1,
                    children: [
                      SizedBox(
                        width: Get.width * 0.2,
                        child: MyThemeButton(
                          buttonText: 'no'.tr,
                          color: appBgColor,
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.2,
                        child: MyThemeButton(
                          buttonText: 'yes'.tr,
                          color: appBgColor,
                          onPressed: onPressed,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return const SizedBox();
      },
    );
  }

}