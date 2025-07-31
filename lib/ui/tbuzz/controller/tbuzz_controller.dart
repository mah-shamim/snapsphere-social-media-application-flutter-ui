import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tribpix/general_binding/common_binding.dart';
import 'package:tribpix/routes/routes.dart';
import 'package:tribpix/services/dio_api_handler/api_worker.dart';
import 'package:tribpix/theme/color/colors.dart';
import 'package:tribpix/ui/dashbord/dashbord_screen.dart';
class TBuzzController extends GetxController {
  late ApiWorker apiWorker = Get.put(ApiWorker());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool passwordShow=true.obs;
  RxBool isChecked=false.obs;
  RxString deviceId = ''.obs;
  RxString deviceType = ''.obs;


  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.dashbord) {
      return GetPageRoute(
        settings: settings,
        page: () => const DashbordScreen(),
        binding: CommonBinding(),
      );
    }

    return null;
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