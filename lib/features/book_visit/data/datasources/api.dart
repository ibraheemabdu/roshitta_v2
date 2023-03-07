import 'package:rosheta/core/custom_snackbar.dart';

import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/shared_preferences_helper.dart';
import '../../../../core/helper_clasess/var.dart';


bookVisitData({lang, phone, age, name, date, time,user_id}) async {



  var token = await Utilities.getToken();
  print('tokintokintokintokintokintokintokintokintokintokin');
  print(token);
  print('tokintokintokintokintokintokintokintokintokintokin');

  final data = await  NetworkHelper.post(
    url:'api/patient/bookAppointment',deCoded: true,
    body: {
      'api_password':PublicVariables.api_password,
      'device_id':await PublicVariables.getId(),
      'lang':lang,
      "user_type":"doctors",
      "phone":phone,
      "age":age,
      "name":name,
      "date":date,
      "time":time,
      "user_id":user_id
    },
    headers: {
    },
    withAuthToken: true,
  );
  customSnackBarWidget(data);
  print(data);
  return data ;
}