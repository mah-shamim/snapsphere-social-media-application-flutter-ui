import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/login/components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: LoginBody(),
    );
  }
}
