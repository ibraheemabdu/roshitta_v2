import 'dart:convert';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Utilities{
  static Future<String> getToken() async{
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token').toString();

    if(token == 'null')
    {
      token = "";
    }

    return token;
  }
  static  Future<void> setToken(String tokenSingIn) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token',tokenSingIn);
  }
  static Future<String> getIsUserHost() async{
    final prefs = await SharedPreferences.getInstance();

    String isHost = prefs.getString('is_host').toString();
    if(isHost == null)
    {
      isHost = "";
    }
    return isHost;
  }
  static  Future<void> setIsUserHost(String isHost) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('is_host',isHost);
  }

  static Future<String> getUserImage() async{
    final prefs = await SharedPreferences.getInstance();
    String userImage = prefs.getString('user_image').toString();
    if(userImage == null)
    {
      userImage = "";
    }
    return userImage;
  }
  static  Future<void> setUserImage(String userImage) async{

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_image',userImage);
  }

  static Future<Map<String,dynamic>> getBookInfo() async{
    final prefs = await SharedPreferences.getInstance();
    var pInfoString = prefs.getString('payment_info');
    if(pInfoString == null)
    {
      return {};
    }
    var pInfoMap = jsonDecode(pInfoString);
    return pInfoMap;
  }
  static  Future<void> setBookInfo({firstName,lastName,country,phone}) async{
    final prefs = await SharedPreferences.getInstance();
    var data = {
      'first_name' : firstName,
      'last_name' : lastName,
      'country' : country,
      'phone': phone
    };
    var str = jsonEncode(data);
    await prefs.setString('payment_info',str);
  }

  static Future<Map<String,dynamic>> getUserInfo() async{
    final prefs = await SharedPreferences.getInstance();
    var pInfoString = prefs.getString('userInfoData');
    if(pInfoString == null)
    {
      return {

      };
    }

    var pInfoMap = jsonDecode(pInfoString);
    return pInfoMap;
  }
  static  Future<void> setUserInfo({firstName,lastName,country,email,address,phone,image}) async{
    final prefs = await SharedPreferences.getInstance();
    var data = {
      'first_name' : firstName,
      'last_name' : lastName,
      'country' : country,
      'email': email,
      'address': address,
      'phone':phone,
      'profile_image':image,
    };
    var str = jsonEncode(data);
    await prefs.setString('userInfoData',str);
  }
  static Future<List> getUserBookingsAndReviews() async{
    final prefs = await SharedPreferences.getInstance();
    var pInfoString = prefs.getString('user_bookings_and_reviews');
    if(pInfoString == null)
    {
      return [];
    }

    var pInfoMap = jsonDecode(pInfoString);
    return pInfoMap;
  }
  static  Future<void> setUserBookingsAndReviews({dataInfo}) async{
    final prefs = await SharedPreferences.getInstance();
    List data = List.empty(growable: true);
    data = dataInfo;
    var str = jsonEncode(data);
    await prefs.setString('user_bookings_and_reviews',str);
  }

  static Future<List<String>> getDeviceDetails() async {
    String deviceName = '';
    String deviceVersion = '';
    String identifier = '';
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceName = build.model!;
        deviceVersion = build.version.toString();
        identifier = build.androidId!;  //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name!;
        deviceVersion = data.systemVersion!;
        identifier = data.identifierForVendor!;  //UUID for iOS
      }
    } on PlatformException {

    }

    return [deviceName, deviceVersion, identifier];

  }

}