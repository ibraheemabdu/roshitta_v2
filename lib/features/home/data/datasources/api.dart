import 'dart:io';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';

import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/var.dart';
getHomeData(lang) async {



  final data = await  NetworkHelper.post(
    url:'api/home/homePageData',deCoded: true,
    body: {
      'api_password':PublicVariables.api_password,
      'device_id':await PublicVariables.getId(),
      'lang':lang
    },
    headers: {
    },
    withAuthToken: true,

  );



  return data ;
}




