import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tribpix/general_binding/common_binding.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/services/dio_api_handler/api_worker.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/dashbord/dashbord_screen.dart';
import 'package:tribpix/ui/tbuzz/tbuzz_screen.dart';
class ProfileController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController transslateController = TextEditingController();
  TextEditingController searchPersonController = TextEditingController();
  RxBool passwordShow=true.obs;
  RxBool isChecked=false.obs;
  RxBool isVisible=false.obs;
  RxBool isActivity=false.obs;
  RxString deviceId = ''.obs;
  RxString deviceType = ''.obs;

  RxList<String> photosList=['https://www.indiafilings.com/learn/wp-content/uploads/2023/03/Can-a-single-person-own-a-firm-in-India.jpg','https://www.india.com/wp-content/uploads/2017/07/single-man-5.jpg','https://assets.thehansindia.com/h-upload/2022/09/13/1600x960_1312166-rel.jpg','https://api.time.com/wp-content/uploads/2014/09/woman-standing-alone.jpg','https://mediaproxy.salon.com/width/1200/https://media.salon.com/2012/07/Screen-shot-2012-07-06-at-2.41.50-PM.png'].obs;



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