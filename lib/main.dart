import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/general_binding/common_binding.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/get_theme.dart';


Future<void> main() async {
  NkGetXTheme.systemChromeStyle;
  WidgetsFlutterBinding.ensureInitialized();
  /// [backgroundHandler] use to handle notification on background
  runApp(GetMyApp());
}

class GetMyApp extends StatefulWidget {
  const GetMyApp({super.key});

  @override
  State<GetMyApp> createState() => _GetMyAppState();
}

class _GetMyAppState extends State<GetMyApp> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              AppDimensions.createInstance(context, constraints);
              AppDimensions.instance!.orientation =
                  AppDimensions.update(context, constraints).orientation;
              AppDimensions.instance!.height =
                  AppDimensions.update(context, constraints).height;
              AppDimensions.instance!.width =
                  AppDimensions.update(context, constraints).width;
              return child!;
            });
      },
      theme: NkGetXTheme.lightTheme,
      getPages: AppRoutes.genratedRoutes,
      initialRoute: AppRoutes.splash,
      themeMode: ThemeMode.system,
      initialBinding: CommonBinding(),
      debugShowCheckedModeBanner: false,
    );
  }



}
