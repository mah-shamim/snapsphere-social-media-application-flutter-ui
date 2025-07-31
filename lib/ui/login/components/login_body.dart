import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tribpix/components/common_size/common_hight_width.dart';
import 'package:tribpix/components/common_size/nk_font_size.dart';
import 'package:tribpix/components/common_size/nk_spacing.dart';
import 'package:tribpix/components/widgets/comman_snackbar.dart';
import 'package:tribpix/components/widgets/my_form_field.dart';
import 'package:tribpix/components/widgets/my_regular_text.dart';
import 'package:tribpix/components/widgets/my_theme_button.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/login/controller/login_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  LoginController controller = Get.put(LoginController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: nkMediumPadding(bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: AppDimensions.instance!.height * 0.04,
              ),
              MyRegularText(
                label: appName,
                fontSize: 24,
                color: whiteColor,
              ),
              MyRegularText(
                label: signInSubTitle,
                color: containerBgColor,
                fontSize: 10,
              ),
              SizedBox(
                height: AppDimensions.instance!.height * 0.028,
              ),
              Container(
                padding: nkMediumPadding(
                    top: AppDimensions.instance!.height * .02,
                    bottom: AppDimensions.instance!.height * .02),
                decoration: BoxDecoration(
                  color: containerBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyRegularText(
                      label: emailOrUserLabel,
                      color: containerLabelColor,
                      fontSize: 10,
                    ),
                    SizedBox(
                      height: AppDimensions.instance!.height * 0.02,
                    ),
                    MyFormField(
                      controller: controller.emailController,
                      labelText: emailLabel,
                      textInputAction: TextInputAction.next,
                      maxLines: 1,
                      prefixIconUnderLine: Icon(
                        Icons.email,
                        color: containerLabelColor,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.instance!.height * 0.02,
                    ),
                    MyRegularText(
                      label: passwordSubLabel,
                      color: containerLabelColor,
                      fontSize: 10,
                    ),
                    SizedBox(
                      height: AppDimensions.instance!.height * 0.02,
                    ),
                Obx(()=> MyFormField(
                          controller: controller.passwordController,
                          labelText: passwordLabel,
                          textInputAction: TextInputAction.done,
                          maxLines: 1,
                          obscureText: controller.passwordShow.value,
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.passwordShow.value =
                                  controller.passwordShow.value ? false : true;
                            },
                            child: Icon(
                              Icons.remove_red_eye,
                              color: controller.passwordShow.value
                                  ? shadowColor
                                  : containerLabelColor,
                            ),
                          ),
                          prefixIconUnderLine: Icon(
                            Icons.lock,
                            color: containerLabelColor,
                          )),
                    ),
                    SizedBox(
                      height: AppDimensions.instance!.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            checkBox(controller),
                            MyRegularText(
                              label: checkBoxLabel,
                              fontSize: NkFontSize.largeFont(largeFont: 10),
                              color: containerLabelColor,
                            ),
                          ],
                        ),
                        MyRegularText(
                          label: forgotPasswordLabel,
                          fontSize: NkFontSize.largeFont(largeFont: 10),
                          color: forgotPasswordColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.instance!.height * 0.028,
              ),
              MyThemeButton(
                buttonText: signInLabel,
                onPressed: () {
                  if (controller.emailController.value.text.isEmpty) {
                    CommanSnackbar.showError('Please Enter Email Address',
                        'Email Address is required');
                  } else if (controller.passwordController.value.text.length <
                      8) {
                    CommanSnackbar.showError('Please Enter Password',
                        'More Then 8 Characters  is required');
                  } else if (controller.isChecked.value == false) {
                    CommanSnackbar.showError(
                        'Please Tick Check Box', 'Check Box is required');
                  } else {
                    print('Sign In');
                    Get.offAllNamed(AppRoutes.bottomTab);
                  }
                },
              ),
              SizedBox(
                height: AppDimensions.instance!.height * 0.028,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyRegularText(
                    label: orLabel,
                    fontSize: NkFontSize.largeFont(largeFont: 10),
                    color: containerLabelColor,
                  ),
                ],
              ),
              SizedBox(
                height: AppDimensions.instance!.height * 0.028,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                signInMethodButton(googleIcon, () {}),
                signInMethodButton(appleIcon, () {}),
                signInMethodButton(facebookIcon, () {}),
              ]),
              SizedBox(
                height: AppDimensions.instance!.height * 0.028,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyRegularText(
                    label: accountLabel,
                    fontSize: NkFontSize.largeFont(largeFont: 10),
                    color: containerLabelColor,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAllNamed(AppRoutes.signup);
                    },
                    child: MyRegularText(
                      label: signUpLabel,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: forgotPasswordColor,
                        fontSize: NkFontSize.largeFont(largeFont: 10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppDimensions.instance!.height * 0.028,
              ),
            ],
          ),
        ),
      ),
    );
  }

  checkBox(controller) {
    return Obx(
      () => Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(controller.getColor),
        value: controller.isChecked.value,
        onChanged: (bool? value) {
          controller.isChecked.value = value!;
        },
      ),
    );
  }
}

signInMethodButton(image, onTap) {
  return InkResponse(
    onTap: onTap,
    child: Container(
      padding: nkMediumPadding(),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: signInMethodColor,
      ),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.fill,
        height: AppDimensions.instance!.height * 0.03,
        width: AppDimensions.instance!.width * 0.03,
      ),
    ),
  );
}
