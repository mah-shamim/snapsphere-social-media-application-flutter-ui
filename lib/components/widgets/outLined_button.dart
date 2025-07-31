import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';


class OutLinedButton extends StatelessWidget {
  final String? labelText;
  final String? text;
  final GestureTapCallback? onTap;
  final Widget? icone;
  final Widget? child;
  final TextAlign? align;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final Color? color1;
  final double? fontSize;
  final FontWeight? fontWeight;
  final BoxBorder? border;
  InputDecoration? decoration = const InputDecoration();

  OutLinedButton({
    Key? key,
    this.labelText,
    this.child,
    this.onTap,
    this.color,
    this.color1,
    this.fontSize,
    this.fontWeight,
    this.align,
    this.boxShadow,
    this.decoration,
    this.icone,
    this.text,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color:color?? whiteColor,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.08),
              blurRadius: 3,
              offset: Offset(0, 4),
            ),
          ],
          border: border?? Border.all(width: 0.5, color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              right: 18.0, left: 20, top: 18.0, bottom: 18.0),
          child: child ??
              Text(text!,
                  textAlign: align ?? TextAlign.center,
                  style: TextStyle(fontSize: fontSize?? 16, color: color1?? appBgColor,fontWeight: fontWeight)),
        ),

      ),
    );
  }
}
