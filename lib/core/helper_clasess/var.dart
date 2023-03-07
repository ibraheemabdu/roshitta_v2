

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PublicVariables {

  static var api_password = 'OIIGg*KT*0x2rZRAP6u1tJsB1oO4l@Qibo5RuZcwcX^zq';

  static getId() async {
    print('androidDeviceInfo');
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor.toString();
    }
    else if(Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId.toString();
    }
  }
}

class AppDataModel extends GetxController{
   List  passengers = [];
  // List<CartItem> cartItem = [];
  // int cartToltalQuantity = 0 ;
  // double cartToltalPrice = 0.0 ;
  // RxString image = 'assets/images/logo.png'.obs ;
  // static int categoryId = 0 ;
  // static String categoryName = '' ;
  // static String categoryImage = '' ;
  // static List<List<int>> filtrdata = [] ;
}