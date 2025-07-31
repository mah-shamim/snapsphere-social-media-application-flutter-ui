import 'package:flutter/material.dart';

import '../theme/color/colors.dart';

class DecorationUtils {
  BuildContext context;

  DecorationUtils(this.context);

  InputDecoration getUnderlineInputDecoration({
    String? labelText = "",
    bool isRequire = false,
    bool isEnable = true,
    final Color? enableColor,
    final Color? disabledColor,
    bool? alignLabelWithHint,
    final Color? focusedColor,
    final Color? labelTextColor,
    final FloatingLabelBehavior? floatingLabelBehavior,
    icon,
    final Widget? prefixIcon,
    final Widget? suffixIcon,
    final BorderRadius? borderRadius,
    final Color? fillColor,
    final Color? hintColor,
    final EdgeInsetsGeometry? contentPadding,
  }) {
    return InputDecoration(
      fillColor: isRequire ? fillColor ?? textFieldBgColor : textFieldBgColor,
      filled: false,
      alignLabelWithHint: alignLabelWithHint,
      suffixIcon: suffixIcon,
      icon: icon,

      border: InputBorder.none,
      prefixIcon: prefixIcon,
      contentPadding: contentPadding ?? const EdgeInsets.all(14.0),
      labelText: labelText,
      counterText: "",
      labelStyle: TextStyle(
        color: labelTextColor ?? formFieldHintColor,

      ),
      hintStyle: TextStyle(
        color: hintColor ?? whiteColor,
      ),
      floatingLabelBehavior:
          floatingLabelBehavior ?? FloatingLabelBehavior.never,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            width: 3, color:formFieldHintColor),
      ),
      disabledBorder:UnderlineInputBorder(
        borderSide: BorderSide(
            width: 3, color:formFieldHintColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            width: 3, color:formFieldHintColor),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            width: 3, color:errorColor),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            width: 3, color:errorColor),
      ),
    );
  }
}
