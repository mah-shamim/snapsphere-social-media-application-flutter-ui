import 'package:flutter/material.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/theme/color/colors.dart';

class BlueButton extends StatelessWidget {
  final String? labelText;
  final String? text;
  final GestureTapCallback? onTap;
  final Widget? icone;
  final BoxBorder? border;
  final double? fontSize;
  final FontWeight? fontWeight;
  InputDecoration? decoration = InputDecoration();

  BlueButton({
    Key? key,
    this.labelText,
    this.border,
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.onTap,
    this.decoration,
    this.icone,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
        onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: appBgColor,
          border: border,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              right: 18.0, left: 20, top: 18.0, bottom: 18.0),
          child: MyRegularText(label:text!,
              style: TextStyle(
                  fontSize: fontSize ?? 18,
                  color: whiteColor,
                  fontFamily: 'Panton_Regular',
                  fontWeight: fontWeight ?? FontWeight.w600)
          ),
        ),
      ),
    );
  }
}
