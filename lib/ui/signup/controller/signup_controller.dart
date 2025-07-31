import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tribpix/services/dio_api_handler/api_worker.dart';
import 'package:tribpix/theme/color/colors.dart';
class SignupController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  RxBool newPasswordShow=true.obs;
  RxBool confirmPasswordShow=true.obs;
  RxString deviceId = ''.obs;
  RxString deviceType = ''.obs;

  RxBool isPolicyChecked=false.obs;



  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return  appBgColor;
    }
    return  buttonColor;
  }

}


/* Future<void> loginApi(context)async{
   await apiWorker.loginApi(emailController.text, passwordController.text,Utils.fcmToken,deviceId,deviceType,context).then((value) {
     if (value!=null) {
       if (value.data?.roleId=='2') {
         print('value is ${value.data!.token}');
         SessionHelper().setLoginResponse(value);
         CommanSnackbar.showSuccess('${value.message}');
         Get.offAllNamed(AppRoutes.bottomTab);
       }else{
         ProgressBar.hideProgressBar();
         CommanSnackbar.showError('Wrong Credentials','Please try again later');
       }
     }
   });
  }*/
// }