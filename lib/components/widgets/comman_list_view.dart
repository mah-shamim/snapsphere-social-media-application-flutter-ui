import 'package:flutter/material.dart';

class CommanList extends StatelessWidget {
 final int length;
 final Widget? Function(BuildContext, int) child;
 ScrollPhysics physics;
    CommanList({Key? key,required this.length,required this.child,required this.physics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       physics:physics,
      itemCount: length,
      scrollDirection: Axis.vertical,
      clipBehavior: Clip.antiAlias,
      shrinkWrap: true,
      itemBuilder: child,
    );
  }
}
