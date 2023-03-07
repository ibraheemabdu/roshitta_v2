
import '../../../../core/helper_clasess/network_helper.dart';
import '../../../../core/helper_clasess/var.dart';


  getAppointmentsData(lang) async {
  final data = await  NetworkHelper.post(
    url:'api/patient/getAppointments',deCoded: true,
    body: {
      'api_password':PublicVariables.api_password,
      'device_id':await PublicVariables.getId(),
      'lang':lang
    },
    headers: {
    },
    withAuthToken: true,
  );


  print('data data data data data data data data data');

  print(data);


  return data ;
}




