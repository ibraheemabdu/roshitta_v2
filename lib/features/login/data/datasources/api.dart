import 'dart:io';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/var.dart';

loginData({lang, email, password}) async {
  final data = await NetworkHelper.post(
    url: 'api/login',
    deCoded: true,
    body: {
      'api_password': PublicVariables.api_password,
      'device_id': await PublicVariables.getId(),
      'lang': lang,
      'email':email,
      'password':password
    },
    headers: {},
    withAuthToken: true,
  );
  customSnackBarWidget(data);

  if(data['status'] == true)
  {
    _saveToken(data['access_token']);
  }
  return data;
}






_saveToken(token) async
{
  final prefs = await SharedPreferences.getInstance() ;
  final key = 'token' ;
  final value = token;
  await prefs.setString(key, value);
}