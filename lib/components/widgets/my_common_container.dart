import 'package:flutter/material.dart';

import '../../theme/color/colors.dart';
import '../common_size/nk_general_size.dart';

class MyCommnonContainer extends StatelessWidget {
  final Widget? child;
  final GestureTapCallback? onTap;
  final double? borderRadius;
  final Color? color;
  final DecorationImage? image;
  final BoxBorder? border;
  final BoxShape? boxShape;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool isCommonBorder;
  final bool isShowError;
  final BoxConstraints? boxConstraints;
  final AlignmentGeometry? alignment;
  final Color? inkwellSplashColor;
  final BorderRadiusGeometry? borderRadiusGeometry;

  MyCommnonContainer(
      {Key? key,
      this.child,
      this.onTap,
      this.borderRadius,
      this.color,
      this.image,
      this.border,
      this.boxShape,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.boxConstraints,
      this.alignment,
      this.inkwellSplashColor,
      this.borderRadiusGeometry,
      this.isCommonBorder = false,
      this.isShowError = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      margin: margin,
      constraints: boxConstraints,
      alignment: alignment,
      decoration: BoxDecoration(
        color: color ?? theme.colorScheme.primaryContainer,
        shape: boxShape ?? BoxShape.rectangle,
        image: image,
        border: isCommonBorder || isShowError
            ? Border.all(
                color: !isShowError ? primaryTextFieldColor : errorColor)
            : border,
        borderRadius: borderRadiusGeometry ??
            BorderRadius.circular(
                borderRadius ?? NkGeneralSize.nkCommonBorderRadius()),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
            borderRadius ?? NkGeneralSize.nkCommonBorderRadius()),
        child: InkWell(
          splashColor: inkwellSplashColor,
          highlightColor: inkwellSplashColor,
          borderRadius: BorderRadius.circular(
              borderRadius ?? NkGeneralSize.nkCommonBorderRadius()),
          onTap: onTap,
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: child,
          ),
        ),
      ),
    );
  }
}
