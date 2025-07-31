import 'package:flutter/material.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/utills/utils.dart';

import '../../theme/color/colors.dart';
import '../common_size/nk_general_size.dart';
import 'my_regular_text.dart';

class MyThemeButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? fontColor;
  final double? fontSize;
  final double? height;
  final double? width;
  final double? letterSpacing;
  final Widget? child;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? padding;
  final bool? isRoundedCorner;
  final Decoration? decoration;
  final Decoration? decorationIn;

  const MyThemeButton({
    Key? key,
    @required this.buttonText,
    this.color = primaryButtonColor,
    this.onPressed,
    this.fontSize = 18.0,
    this.height,
    this.decoration,
    this.decorationIn,
    this.width,
    this.child,
    this.padding,
    this.letterSpacing,
    this.shape,
    this.isRoundedCorner = false,
    this.fontColor = buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return isRoundedCorner ?? true
        ? MaterialButton(
            height: height ?? AppDimensions.instance!.height * 0.06,
            minWidth: width,
            onPressed: onPressed,
            textTheme: theme.buttonTheme.textTheme,
            shape: shape ??
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        NkGeneralSize.nkCommonBorderRadius(borderRadius: 4))),

            padding: padding,
            color: color ?? theme.buttonTheme.colorScheme?.background,

            /* focusColor: color ??
                theme.buttonTheme.colorScheme?.background.withOpacity(0.7),*/
            disabledColor: color,
            child: Container(
              constraints: BoxConstraints.loose(Size(width ?? double.infinity, height ?? 32)),
              child: child ??
                  Center(
                    child: MyRegularText(
                      label: buttonText ?? "ADD NAME !!!!",
                      color: fontColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      letterSpacing: letterSpacing,
                    ),
                  ),
            ),
          )
        : InkWell(
      onTap: onPressed,
          child: Container(
            height: height ?? AppDimensions.instance!.height * 0.06,
            width: width,
decoration:decoration ?? Utils.kGradientBoxDecoration,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration:decorationIn??Utils.kInnerDecoration,
                child: child ??
                    Center(
                      child: MyRegularText(
                        label: buttonText ?? "ADD NAME !!!!",
                        color: fontColor,
                        fontSize: fontSize,
                        letterSpacing: letterSpacing,
                      ),
                    ),
              ),
            ),
          ),
        );
  }
}
