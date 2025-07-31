import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/dashbord/components/dashbord_body.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: DashbordBody(),
    );
  }
}
