

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';
import 'package:tribpix/theme/color/colors.dart';

class Utils {
  static void hideSoftInputKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static bool ishintsave = false;
  static bool isloginsave = false;
  static bool setdatafirebasestatics = false;
  static String baseuriname = '';
  static String fcmToken = '';
  static String apitoken = '40|MQasuw19sFUA2MhpfBy625PK9yRCea3NSmcNmvRB';
  static int productindex = 0;

  ///language
  static String language = "English";

  static Future<String?> networkImageToBase64(String imageUrl) async {
    http.Response response = await http.get(Uri.parse(imageUrl));
    final bytes = response.bodyBytes;
    return (bytes != null ? base64Encode(bytes) : null);
  }


  static Future<dio.MultipartFile> getFormData(String imagePath,
      {required String mapKeyName}) async {
    // get file name

    String fileNameMedia = '';
    if (imagePath.isNotEmpty) {
      File fileMedia = File(imagePath);
      fileNameMedia = basename(fileMedia.path);
      // String extensionMedia = fileNameMedia.split('.').last;
    }

    return await dio.MultipartFile.fromFile(
      imagePath,
      filename: fileNameMedia,
    );
  }

  static final kInnerDecoration = BoxDecoration(
    color:appBgColor,
    border: Border.all(color:appBgColor),
    borderRadius: BorderRadius.circular(20),
  );

  static final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [buttonGradiantColor,buttonGradiantSColor]),
    border: Border.all(
      color:appBgColor,
    ),
    borderRadius: BorderRadius.circular(20),
  );

  static final kInnerDecorationFollow = BoxDecoration(
    color:appBgColor,
    border: Border.all(color:appBgColor),
    borderRadius: BorderRadius.circular(10),
  );

  static final kGradientBoxDecorationFollow = BoxDecoration(
    gradient: LinearGradient(colors: [buttonGradiantColor,buttonGradiantSColor]),
    border: Border.all(
      color:appBgColor,
    ),
    borderRadius: BorderRadius.circular(10),
  );






}

