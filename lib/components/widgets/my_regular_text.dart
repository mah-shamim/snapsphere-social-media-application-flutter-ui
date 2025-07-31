import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';

import '../common_size/nk_general_size.dart';

class MyRegularText extends StatelessWidget {
  final String label;
  final Color? color;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final int? maxlines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final double? stepGranularity;
  final TextStyle? style;
  final bool showEmptyError;
  final TextDecorationStyle? textDecorationStyle;

  const MyRegularText({
    Key? key,
    required this.label,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.align = TextAlign.center,
    this.maxlines,
    this.decoration ,
    this.overflow = TextOverflow.ellipsis,
    this.letterSpacing,
    this.stepGranularity,
    this.style,
    this.textDecorationStyle,
    this.showEmptyError = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return label.isNotEmpty || !showEmptyError
        ? Text(label.isNotEmpty ? label : '',
            textAlign: align,
            maxLines: maxlines ?? 2,
            softWrap: true,
            //minFontSize: 12,
            overflow: overflow,
            style: style ??
                theme.textTheme.labelMedium?.copyWith(
                  color: color??whiteColor,
                  inherit: true,
                  decorationStyle: textDecorationStyle,
                  fontSize: fontSize ?? 14,
                  letterSpacing: letterSpacing,
                  fontWeight: fontWeight ?? NkGeneralSize.nkGeneralFontWeight(),
                  fontStyle: FontStyle.normal,
                  decoration: decoration??TextDecoration.none,
                  decorationColor: color??primaryTextColor,
                  //decorationColor: theme.de,
                  decorationThickness: 1,
                ))
        : ErrorWidget.withDetails(
            message: "PLEASE DO NOT EMPTY LIABLE",
            error: FlutterError("PLEASE DO NOT EMPTY LIABLE"),
          );
  }
}
