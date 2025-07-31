
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'color/colors.dart';
import 'font_style.dart';

class NkGetXTheme {
  static ThemeData get lightTheme => ThemeData(
      shadowColor: shadowColor,
      primaryColor: primaryColor,
      primaryColorLight: primaryColor,
      primaryColorDark: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: appBarTheme,
      textTheme: NkGetXFontStyle.textLightTheme,
      primaryTextTheme: NkGetXFontStyle.textLightTheme,
      dividerColor: dividerColor,
      listTileTheme:
      ListTileThemeData(contentPadding:EdgeInsets.zero),
      expansionTileTheme: ExpansionTileThemeData(
          iconColor: primaryColor,
          textColor: primaryTextColor,
          collapsedTextColor: primaryTextColor,
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero),
      colorScheme: ColorScheme.light(
          primary: primaryColor,
          error: errorColor,
          onError: errorColor,
          background: backgroundColor,
          onBackground: backgroundColor,
          primaryContainer: primaryContainerColor,
          onSecondary: secondaryColor,
          secondaryContainer: secondaryColor,
          surface: backgroundColor,
          secondary: secondaryColor,
          brightness: Get.theme.brightness),
      iconTheme: IconThemeData(
          color: primaryIconColor, size: 14),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: secondaryTextColor,
        selectionColor: cursorColor,
        selectionHandleColor: primaryButtonColor,
      ),
      useMaterial3: true,
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(primaryIconColor))),
      primaryIconTheme: IconThemeData(
          color: primaryIconColor, size:14),
      brightness: Brightness.light,
      buttonTheme: ButtonThemeData(
          buttonColor: primaryButtonColor,
          textTheme: ButtonTextTheme.normal,
          padding: EdgeInsets.zero,
          height: Get.height * 0.06,
          disabledColor: primaryButtonColor,
          focusColor: primaryButtonColor,
          layoutBehavior: ButtonBarLayoutBehavior.padded,
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(10),
          )));

  static AppBarTheme get appBarTheme => const AppBarTheme(
      color: backgroundColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      shadowColor: shadowColor,
      centerTitle: true,
      titleTextStyle: TextStyle());

  static void get systemChromeStyle => SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: whiteColor,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    systemNavigationBarColor: whiteColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}
