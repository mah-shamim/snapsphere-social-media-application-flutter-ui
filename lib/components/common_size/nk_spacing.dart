import 'package:flutter/cupertino.dart';

import 'common_hight_width.dart' as common_hight_width;

class AppHeight{
  static  height (height,context){
    return MediaQuery.of(context).size.height * height;
  }
  static  width (width,context){
    return MediaQuery.of(context).size.width*width;
  }
}

SizedBox nkSmallSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height:
          height ?? common_hight_width.AppDimensions.instance!.height * .010,
      width: width ?? common_hight_width.AppDimensions.instance!.width * .010,
      child: child,
    );

SizedBox nkMediumSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height:
          height ?? common_hight_width.AppDimensions.instance!.height * .016,
      width: width ?? common_hight_width.AppDimensions.instance!.width * .016,
      child: child,
    );

SizedBox nkLargeSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height:
          height ?? common_hight_width.AppDimensions.instance!.height * .086,
      width: width ?? common_hight_width.AppDimensions.instance!.width * .086,
      child: child,
    );

SizedBox nkExtraLargeSizeBox({
  double? height,
  double? width,
  Widget? child,
}) =>
    SizedBox(
      height: height ?? common_hight_width.AppDimensions.instance!.height * .16,
      width: width ?? common_hight_width.AppDimensions.instance!.width * .16,
      child: child,
    );

/// *********** General use Padding  ***************

EdgeInsets nkExtraSmallPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.AppDimensions.instance!.height * .01,
      right: right ?? common_hight_width.AppDimensions.instance!.width * .01,
      bottom: bottom ?? common_hight_width.AppDimensions.instance!.height * .01,
      left: left ?? common_hight_width.AppDimensions.instance!.width * .01,
    );

EdgeInsets nkSmallPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.AppDimensions.instance!.height * .02,
      right: right ?? common_hight_width.AppDimensions.instance!.width * .02,
      bottom: bottom ?? common_hight_width.AppDimensions.instance!.height * .02,
      left: left ?? common_hight_width.AppDimensions.instance!.width * .02,
    );

EdgeInsets nkMediumPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.AppDimensions.instance!.height * .04,
      right: right ?? common_hight_width.AppDimensions.instance!.width * .04,
      bottom: bottom ?? common_hight_width.AppDimensions.instance!.height * .04,
      left: left ?? common_hight_width.AppDimensions.instance!.width * .04,
    );

EdgeInsets nkLargePadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.AppDimensions.instance!.height * .012,
      right: right ?? common_hight_width.AppDimensions.instance!.width * .012,
      bottom:
          bottom ?? common_hight_width.AppDimensions.instance!.height * .012,
      left: left ?? common_hight_width.AppDimensions.instance!.width * .012,
    );
EdgeInsets nkRegularPadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.AppDimensions.instance!.height * .010,
      right: right ?? common_hight_width.AppDimensions.instance!.width * .010,
      bottom:
          bottom ?? common_hight_width.AppDimensions.instance!.height * .010,
      left: left ?? common_hight_width.AppDimensions.instance!.width * .010,
    );

EdgeInsets nkExtraLargePadding({
  double? top,
  double? right,
  double? bottom,
  double? left,
}) =>
    EdgeInsets.only(
      top: top ?? common_hight_width.AppDimensions.instance!.height * .14,
      right: right ?? common_hight_width.AppDimensions.instance!.width * .14,
      bottom: bottom ?? common_hight_width.AppDimensions.instance!.height * .14,
      left: left ?? common_hight_width.AppDimensions.instance!.width * .14,
    );

EdgeInsets nkSymmetricPadding({
  double? horizontal,
  double? vertical,
}) =>
    EdgeInsets.symmetric(
      horizontal:
          horizontal ?? common_hight_width.AppDimensions.instance!.width * .020,
      vertical:
          vertical ?? common_hight_width.AppDimensions.instance!.height * .020,
    );
