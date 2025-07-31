import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/signup/components/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: SignupBody(),
    );
  }
}
