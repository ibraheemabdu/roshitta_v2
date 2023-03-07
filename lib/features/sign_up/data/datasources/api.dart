
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/var.dart';

registerData({lang,country_key,phone, email, password, password_confirmation, name}) async {

  print(country_key);
  print(phone);
  print(email);
  print(password);
  print(password_confirmation);
  print(name);
  final data = await NetworkHelper.post(
    url: 'api/register',
    deCoded: true,
    body: {

      "user_type":"Patient",
      'api_password': PublicVariables.api_password,
      'device_id': await PublicVariables.getId(),
      'lang': lang,
      'name':name,
      'email':email,
      'country_code':country_key,
      'password':password,
      'phone':phone,
      'password_confirmation':password_confirmation,

    },
    headers: {

    },
    withAuthToken: true,
  );

  customSnackBarWidget(data);

  if(data['status'] == true)
  {
    _saveToken(data['access_token']);
  }

  print(data);
  return data;

}

_saveToken(token) async
{
  final prefs = await SharedPreferences.getInstance() ;
  final key = 'token' ;
  final value = token;
  await prefs.setString(key, value);
}