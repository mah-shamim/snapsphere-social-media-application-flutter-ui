import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/session/session_helper.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/utills/const_string.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = const Duration(seconds: 2);
    Timer(_duration, getNavigationPage);
  }

  getNavigationPage() {
    SessionHelper().getIntro().then((value) {
      if (value != null) {
        if (value==1) {
           Get.offAllNamed(AppRoutes.bottomTab);
        }else{
          Get.offAllNamed(AppRoutes.login);
        }
      } else {

      }
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    startTime();
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          children: const [
            Spacer(),
            Center(
              child: MyRegularText(label: appName,  fontSize: 24,color: whiteColor,),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
