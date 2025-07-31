import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/profile/components/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: ProfileBody(),
    );
  }
}
