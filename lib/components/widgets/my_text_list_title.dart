import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';



class MyTextListTitle extends StatelessWidget {
  final String label;
  final String? color;

  const MyTextListTitle({
    Key? key,
    required this.label,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: getTextStyle(context),
    );
  }

  /// get text style from color value if is given than change
  /// text color else default text color
  TextStyle? getTextStyle(BuildContext context) {
    if (color != null) {
      return const TextStyle(color: primaryTextColor,fontSize: 14.0);
  }
    return null;
}
}
