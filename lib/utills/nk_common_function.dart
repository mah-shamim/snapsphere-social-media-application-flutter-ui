/*import 'package:dio/dio.dart' as dio;*/
import 'package:flutter/material.dart';

abstract class NkCommonFunction {
  static Duration shortDuration({Duration? shortDuration}) =>
      shortDuration ?? const Duration(milliseconds: 100);

  static Duration longDuration({Duration? longDuration}) =>
      longDuration ?? const Duration(milliseconds: 500);

/*  static showErrorSnakBar(String message) async {
    await snakBarCloser;
    Get.showSnackbar(GetSnackBar(
      maxWidth: AppDimensions.instance!.width / 2,
      barBlur: 10,
      reverseAnimationCurve: Curves.easeInOutCubicEmphasized,
      duration: longDuration(longDuration: const Duration(seconds: 2)),
      messageText: Center(
        child: MyRegularText(
          color: buttonTextColor,
          label: message,
        ),
      ),
      message: message,
      backgroundColor: errorColor.withOpacity(0.6),
      snackPosition: SnackPosition.TOP,
      borderRadius: NkGeneralSize.nkCommonBorderRadius(),
      margin: nkRegularPadding(),
      isDismissible: true,
      padding: nkSmallPadding(),
      animationDuration: longDuration(longDuration: const Duration(seconds: 2)),
      icon: const Icon(
        Icons.error,
        color: primaryColor,
      ),
    ));
  }

  static get snakBarCloser async =>
      Get.isSnackbarOpen ? await Get.closeCurrentSnackbar() : null;

  static showDeleteSnakBar(
      {String? message,
      void Function()? onYesPressed,
      void Function()? onNoPressed}) {
    Get.showSnackbar(GetSnackBar(
      maxWidth: AppDimensions.instance!.width / 2,
      overlayBlur: 10,
      reverseAnimationCurve: Curves.easeInOutCubicEmphasized,
      duration: longDuration(longDuration: const Duration(seconds: 30)),
      message: message,
      backgroundColor: primaryColor,
      snackPosition: SnackPosition.TOP,
      messageText: Center(
        child: MyRegularText(
          color: buttonTextColor,
          label: message ?? areYouSureToDelete,
        ),
      ),
      mainButton: Wrap(
        children: [
          TextButton(
              onPressed: onYesPressed,
              child: MyRegularText(
                label: yes,
                color: errorColor,
                fontWeight: NkGeneralSize.nkBoldFontWeight(),
                fontSize: NkFontSize.largeFont(),
              )),
          TextButton(
              onPressed: onNoPressed ??
                  () {
                    Get.back();
                  },
              child: MyRegularText(
                label: no,
                color: buttonTextColor,
                fontWeight: NkGeneralSize.nkBoldFontWeight(),
                fontSize: NkFontSize.largeFont(),
              )),
        ],
      ),
      borderRadius: NkGeneralSize.nkCommonBorderRadius(),
      margin: nkRegularPadding(),
      isDismissible: true,
      padding: nkSmallPadding(),
      animationDuration:
          longDuration(longDuration: const Duration(milliseconds: 700)),
      icon: const Icon(Icons.delete),
    ));
  }*/

/*  static Future<dio.MultipartFile> getFormData(String imagePath,
      {required String mapKeyName}) async {
    // get file name
    String fileNameMedia = '';
    if (imagePath.isNotEmpty) {
      File fileMedia = File(imagePath);
      fileNameMedia = basename(fileMedia.path);
      //String extensionMedia = fileNameMedia.split('.').last;
    }

    return await dio.MultipartFile.fromFile(
      imagePath,
      filename: fileNameMedia,
    );
  }*/

  static Widget errorWidget() {
    return Container(
        color: Colors.transparent,
        child: Image.network(
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bc70c43b-aeca-448a-a158-0f8e7c281a0d/dceqwb1-a75b8ac9-8340-45bb-8049-4883b81baa3c.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2JjNzBjNDNiLWFlY2EtNDQ4YS1hMTU4LTBmOGU3YzI4MWEwZFwvZGNlcXdiMS1hNzViOGFjOS04MzQwLTQ1YmItODA0OS00ODgzYjgxYmFhM2MuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Xmt2peugw4IY64xOXTkc3Q1IFo5T861ncwbHc1E4rhM',
        ));
  }
}
