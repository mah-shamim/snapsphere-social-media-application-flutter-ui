import 'dart:io';

import 'package:flutter/material.dart';

import 'common_hight_width.dart';

class NkGeneralSize {
  static double nkIconSize({double? iconSize}) =>
      iconSize ?? AppDimensions.instance!.height * 0.05;

  static double nkCommonBorderRadius({double? borderRadius}) =>
      borderRadius ?? 10.0;

  static FontWeight nkGeneralFontWeight({FontWeight? fontWeight}) =>
      fontWeight ?? FontWeight.w400;

  static FontWeight nkBoldFontWeight({FontWeight? fontWeight}) =>
      fontWeight ?? FontWeight.bold;

  static ScrollPhysics commonPysics({ScrollPhysics? physics}) =>
      Platform.isAndroid
          ? physics ?? const BouncingScrollPhysics()
          : physics ?? const AlwaysScrollableScrollPhysics();
}
