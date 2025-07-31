import 'package:dio/dio.dart';
import 'package:tribpix/components/widgets/comman_snackbar.dart';

import 'package:tribpix/utills/utils.dart';

import 'api_constants.dart';
import 'dio_client.dart';

class ApiWorker with ApiConstants {
  late DioClient dio;
  ApiWorker() {
    dio = DioClient();
  }

  var token;
  var userId;
/*
  Future<LoginResponse?> loginApi(String email, String password,fcm_token,device_id,device_type,context) async {
    ProgressBar.showProgressBarApi(context);

    var formData = FormData.fromMap({
      'email': email,
      'password': password,
      'fcm_token': fcm_token,
      'device_id': device_id,
      'device_type': device_type,
    });

    final response = await dio.postbycustom(
      ApiConstants.login,
      data: formData,
    ).onError((DioException error, stackTrace) {
      print('sfsfsff');
      ProgressBar.hideProgressBar();
      CommanSnackbar.showError(error.toString(),'Please try again later');
      return Future.error(throw DioExceptionHandler.fromDioError(error));
    });
    print('sfsfsff1212');
    ProgressBar.hideProgressBar();
    print('response.statusCode  ${response.statusCode}');
    if(response.data['status']==false){
      print('in++');
      CommanSnackbar.showError(response.data['message'],'Please try again later');
    }else{
      return LoginResponse.fromMap(response.data);
    }
    return null;
  }

  /////////////////////////////////////// register  ////////////////////////////////////

  Future<LoginResponse?> registerApi(String email, String password,String name,String image,String fcmToken,String deviceType,String deviceId,context) async {
    ProgressBar.showProgressBarApi(context);

    var fileimage =await Utils.getFormData(image, mapKeyName: '');

    var formData = FormData.fromMap({
      'email': email,
      'password': password,
      'name': name,
      'image':fileimage,
      'fcm_token': fcmToken,
      'device_type': deviceType,
      'device_id': deviceId,
    });
    print('form data ${formData.fields.toString()}');

    final response = await dio.postbycustom(
      ApiConstants.register,
      data: formData,
    ).onError((DioException error, stackTrace) {
      print('sfsfsff');
      ProgressBar.hideProgressBar();
      CommanSnackbar.showError(error.toString(),'Please try again later');
      return Future.error(throw DioExceptionHandler.fromDioError(error));
    });
    print('sfsfsff1212');
    ProgressBar.hideProgressBar();
    print('response.statusCode  ${response.statusCode}');
    if(response.data['status']==false){
      print('in++');
      CommanSnackbar.showError(response.data['message'],'Please try again later');
    }else{
      return LoginResponse.fromMap(response.data);
    }
    return null;
  }

  /////////////////////////////////////// register  ////////////////////////////////////

  Future<LoginResponse?> updateProfile(String email,String name,String image,context) async {
    ProgressBar.showProgressBarApi(context);
    await SessionHelper().getLoginResponse().then((value) {
      token = value!.data?.token;
    });
    var fileimage;
    if (image.isNotEmpty) {
       fileimage =await Utils.getFormData(image, mapKeyName: '');
    }

    var formData = FormData.fromMap({
      'email': email,
      'name': name,
      'image':fileimage,
    });
    print('form data ${formData.fields.toString()}');

    final response = await dio.postbycustom(
      ApiConstants.updateProfile,
      data: formData,
      options: Options(
        headers: {
          "authorization": "Bearer $token",
        },
      ),
    ).onError((DioException error, stackTrace) {
      print('sfsfsff');
      ProgressBar.hideProgressBar();
      CommanSnackbar.showError(error.toString(),'Please try again later');
      return Future.error(throw DioExceptionHandler.fromDioError(error));
    });
    print('sfsfsff1212');
    ProgressBar.hideProgressBar();
    print('response.statusCode  ${response.statusCode}');
    if(response.data['status']==false){
      print('in++');
      CommanSnackbar.showError(response.data['message'],'Please try again later');
    }else{
      return LoginResponse.fromMap(response.data);
    }
    return null;
  }

  /////////////////////////////////////// addCoins  ////////////////////////////////////

  */

}

