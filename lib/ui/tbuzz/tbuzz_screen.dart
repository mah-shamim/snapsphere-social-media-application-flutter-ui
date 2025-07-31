import 'package:flutter/material.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/tbuzz/components/tbuzz_body.dart';

class TBuzzScreen extends StatelessWidget {
  const TBuzzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: TBuzzBody(),
    );
  }
}
