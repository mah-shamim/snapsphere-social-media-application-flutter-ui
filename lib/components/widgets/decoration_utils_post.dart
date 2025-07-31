
import 'package:flutter/material.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/theme/color/colors.dart';

class DecorationUtilsPost {
  BuildContext context;

  DecorationUtilsPost(this.context);

  /// underline decoration
  InputDecoration getUnderlineInputDecoration({
    String? labelText = "",
    bool isRequire = false,
    bool isEnable = true,
    icon,
  }) {
    return InputDecoration(
      fillColor: textFieldBgColor,
      filled: true,
      contentPadding:  EdgeInsets.only(left: AppDimensions.instance!.width * 0.03, right: AppDimensions.instance!.width * 0.03,bottom:  AppDimensions.instance!.height * 0.02,top: 0),
      labelText: labelText,
      hintText: labelText,
      counterText: "",
      labelStyle: const TextStyle(color: Colors.grey,),
      hintStyle: const TextStyle(color:  Colors.grey, ),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color:  whiteColor, width: 0.5),
      ),
      disabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color:  whiteColor, width: 0.5),

      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color:  whiteColor, width: 0.5),
      ),
    );
  }
}
