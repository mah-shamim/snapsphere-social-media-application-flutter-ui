


import 'package:tribpix/components/common_size/common_hight_width.dart';

class NkFontSize {
  const NkFontSize._();

  static double extraSmallFont({double? extraSmallFont}) =>
      extraSmallFont ?? AppDimensions.instance!.height * 0.08;

  static double smallFont({double? smallFont}) =>
      smallFont ?? AppDimensions.instance!.height * 0.012;

  static double mediumFont({double? mediumFont}) =>
      mediumFont ?? AppDimensions.instance!.height * 0.014;

  static double regularFont({double? regularFont}) =>
      regularFont ?? AppDimensions.instance!.height * 0.016;

  static double largeFont({double? largeFont}) =>
      largeFont ?? AppDimensions.instance!.height * 0.020;

  static double extraLargeFont({double? extraLargeFont}) =>
      extraLargeFont ?? AppDimensions.instance!.height * 0.040;
}
