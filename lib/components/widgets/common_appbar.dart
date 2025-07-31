import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:tribpix/components/common_size/common_hight_width.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final AppBar? appBar;
  final Widget? leadingWidget;
  final bool? automaticallyImplyLeadingFlag;
  final List<Widget>? actionWidgets;

  /// you can add more fields that meet your needs
  const MyAppBar(
      {Key? key,
        this.title,
        this.appBar,
        this.leadingWidget,
        this.automaticallyImplyLeadingFlag,
        this.actionWidgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: title,
      centerTitle: Platform.isIOS,
      leading: leadingWidget,
      actions: actionWidgets,
      automaticallyImplyLeading: automaticallyImplyLeadingFlag!,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppDimensions.instance!.height * 0.032);
}
