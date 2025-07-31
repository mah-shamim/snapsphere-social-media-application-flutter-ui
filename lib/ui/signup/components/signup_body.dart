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
import 'package:tribpix/ui/signup/controller/signup_controller.dart';
import 'package:tribpix/utills/const_image.dart';
import 'package:tribpix/utills/const_string.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({Key? key}) : super(key: key);

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  SignupController controller = Get.put(SignupController());

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
                      textInputType:  TextInputType.emailAddress,
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
                    Obx(()=>
                       MyFormField(
                          controller: controller.passwordController,
                          labelText: passwordLabel,
                          textInputAction: TextInputAction.next,
                          maxLines: 1,
                          obscureText:  controller.newPasswordShow.value,
                          suffixIcon: InkWell(
                            onTap: (){
                              controller.newPasswordShow.value=controller.newPasswordShow.value?false:true;
                            },
                            child: Icon(
                              Icons.remove_red_eye,
                              color:controller.newPasswordShow.value?shadowColor:containerLabelColor ,
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
                    MyRegularText(
                      label: confirmPasswordSubLabel,
                      color: containerLabelColor,
                      fontSize: 10,
                    ),
                    SizedBox(
                      height: AppDimensions.instance!.height * 0.02,
                    ),
                    Obx(()=> MyFormField(
                          controller: controller.confirmPasswordController,
                          labelText: passwordLabel,
                          textInputAction: TextInputAction.done,
                          maxLines: 1,
                          obscureText:  controller.confirmPasswordShow.value,
                          suffixIcon: InkWell(
                            onTap: (){
                              controller.confirmPasswordShow.value=controller.confirmPasswordShow.value?false:true;
                            },
                            child: Icon(
                              Icons.remove_red_eye,
                              color:controller.confirmPasswordShow.value?shadowColor: containerLabelColor ,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            checkBox(controller),
                            MyRegularText(
                              label: signUpCheckLabel,
                              fontSize: NkFontSize.largeFont(largeFont: 10),
                              color: containerLabelColor,
                            ),
                            InkWell(
                              onTap: (){
                               print('term and condition');
                              },
                              child: MyRegularText(
                                label: termsAndPolicy,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: forgotPasswordColor,
                                  fontSize: NkFontSize.largeFont(largeFont: 10),
                                ),
                              ),
                            ),
                          ],
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
                buttonText: signUpLabel,
                onPressed: () {
                  if(controller.emailController.value.text.isEmpty){
                    CommanSnackbar.showError('Please Enter Email Address', 'Email Address is required');
                  }else if(controller.passwordController.value.text.length<8){
                    CommanSnackbar.showError('Please Enter Password', 'More Then 8 Characters  is required');
                  }else if(controller.confirmPasswordController.value.text.isEmpty){
                    CommanSnackbar.showError('Please Enter Confirm Password', 'Confirm Password is required');
                  }else if(controller.confirmPasswordController.value.text!=controller.passwordController.value.text){
                    CommanSnackbar.showError('Please Enter Valid Password', 'The Password does not match');
                  }else if(controller.isPolicyChecked.value==false){
                    CommanSnackbar.showError('Please Tick Check Box', 'Check Box is required');
                  } else{
                    print('SignIn');
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
                    onTap: (){
                      Get.offAllNamed(AppRoutes.login);
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
        value: controller.isPolicyChecked.value,
        onChanged: (bool? value) {
          controller.isPolicyChecked.value = value!;
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
