
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyProgressIndicator extends StatelessWidget {
  final Color? backgroundColor;
  final Color? color;
  final double? strokeWidth;
  final double? value;
  final Animation<Color?>? valueColor;
  final String? semanticsLabel;
  final String? semanticsValue;

  const MyProgressIndicator(
      {super.key, this.backgroundColor,
      this.color,
      this.strokeWidth,
      this.value,
      this.valueColor,
      this.semanticsLabel,
      this.semanticsValue});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Center(
        child: CircularProgressIndicator(
      backgroundColor: backgroundColor,
      color: color ?? theme.progressIndicatorTheme.color,
      strokeWidth: strokeWidth ?? 1.5,
      value: value,
      valueColor: valueColor,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ));
  }
}
