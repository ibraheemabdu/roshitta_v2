import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:http/http.dart' as http;

import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/shared_preferences_helper.dart';
import '../../../../core/helper_clasess/var.dart';
getDoctoData(lang, currentPage) async {


  var _headers =  {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'lang':Get.deviceLocale.toString(),
  };

  String token='';
    token  = await Utilities.getToken();
    _headers['Authorization'] = 'Bearer $token' ;



  final Uri uri = Uri.parse(
      "https://roshiita.com/api/doctors/doctorList?page=$currentPage");

  final response = await http.post(uri,




      headers: _headers ,
      body: jsonEncode(
          {
            'api_password':PublicVariables.api_password,
            'device_id':await PublicVariables.getId(),
            'lang':lang
          })
  ).timeout( Duration(seconds: 15)
  );




  return jsonDecode(response.body);

  // final data = await  NetworkHelper.post(
  //   url:'api/doctors/doctorList?page=$currentPage',
  //   deCoded: true,
  //   body: {
  //     'api_password':PublicVariables.api_password,
  //     'device_id':await PublicVariables.getId(),
  //     'lang':lang
  //   },
  //   headers: {
  //   },
  //   withAuthToken: true,
  // );
  // print('abdu12');
  //
  // return data ;
}