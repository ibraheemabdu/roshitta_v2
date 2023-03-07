import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rosheta/core/helper_clasess/shared_preferences_helper.dart';
import '../custom_snackbar.dart';
import 'debug_helper.dart';
import 'package:get/get.dart';

String baseUrl = 'roshiita.com';

class NetworkHelper {

  static Future<Map<String,String>> _getHeaders({Map<String,String> headers = const {},withAuthToken = true}) async {
    var _headers =  {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'lang':Get.deviceLocale.toString(),
    };

    String token='';
    if(withAuthToken) {
      token  = await Utilities.getToken();
      _headers['Authorization'] = 'Bearer $token' ;
    }



    if (headers == {}) {
      return _headers;
    }
    headers.forEach((k, v) {
      if (k == '' ) {
        throw Exception('Headers contain an empty key: ' + k + 'is empty');
      }
      if (v == '' ) {
        throw Exception(
            'Headers contain null empty value: ' + k + ' value is empty');
      }
      _headers[k] = v;
    });
    return _headers;
  }

  static Map<String,dynamic> _getQueryParameters({Map<String,dynamic> parameters = const {}}) {
    Map<String,dynamic> _queryParameters = {};

    if (parameters == {}) {
      return _queryParameters;
    }
    parameters.forEach((k, v) {
      if (v == '' || v == null ) {
        throw Exception('Parameters contain an empty key: ' + k + 'is empty');
      }
      if (k == '' ) {
        throw Exception('Parameters contain null empty value: ' + k + ' value is empty');
      }
      _queryParameters[k] = v.toString();
    });
    return _queryParameters;
  }

  static Map<String,dynamic> _getBody({Map<String,dynamic> body = const {}}) {
    Map<String,dynamic> _body = {};

    if (body == {}) {
      return _body;
    }

    body.forEach((k, v) {
      if (k == '' ) {
        throw Exception('Body contains an empty key: ' + k + 'is empty');
      }
      if (v == '' || v == null ) {
        throw Exception(
            'Body contains null empty value: ' + k + ' value is empty');
      }
      _body[k] = v;
    }
    );
    return _body;
  }

  static Future<dynamic> get(
      {required
  String url, Map<String,dynamic>? parameters,
    Map<String,String> headers = const {},bool showSnackBar = false,
    bool withAuthToken = true,bool deCoded=true
  }
  ) async {
    // url =   url;
    logError('url:$url');
    print('helper 1');

    final _headers = await _getHeaders(headers: headers,withAuthToken: withAuthToken);
    print('helper 2');
    print(parameters);

    final _parameters = _getQueryParameters(parameters: parameters!);
    print('helper 3');

    Uri _url = Uri.https(baseUrl, url, _parameters);
    print(_url);
    try {
      final response = await http.get(_url, headers: _headers).timeout( Duration(seconds: 7));
      logError('Error1');
      final data = _handleResponse(response: response,showSnackBar: showSnackBar, deCoded: deCoded);
      logError('Error2');
      return data;
    } catch (e) {
      logError('Catch Error ' + '$e');
      throw Exception('$e');
    }
  }

  static Future<dynamic> show(
      {
        String url = '',

        bool showSnackBar = false,

        Map<String,dynamic>? parameters,

        Map<String,dynamic>? headers
      }
      ) async {
    url = '/api' + url;
    final _headers = await _getHeaders();
    final _parameters = _getQueryParameters();
    Uri _url = Uri.https(baseUrl, url, _parameters);
    logError('Error1');
    try {
      final response = await http.get(_url, headers: _headers);
      logError('Error2');
      final data = _handleResponse(response: response,showSnackBar: showSnackBar);
      logError('Error3');
      return data;

    } catch (e) {
      logError('Error4');
      logError('Catch Error ' + '$e');
      throw Exception('$e');
    }
  }

  static Future<dynamic> post(
      {String url = '', Map<String, dynamic>? body,

    Map<String,String>? headers,

    bool showSnackBar = false,

    bool withAuthToken = true,

    bool deCoded=true
      }) async {


    final _headers = await _getHeaders(headers: headers!,withAuthToken: withAuthToken);


    final _body = _getBody(body: body!);

    print('_url_url_url_url_url_url_url_url_url_url_url');
    print(url);
    Uri _url = Uri.https(baseUrl, url);

    print('_url_url_url_url_url_url_url_url_url_url_url');
    print(_url);





    try {

      http.Client();

      final response = await http.post(_url,

          headers: _headers,

          body: jsonEncode(_body)).timeout( Duration(seconds: 30));

      final data = _handleResponse(response: response,showSnackBar: showSnackBar,deCoded: deCoded);

      return data;
    }
    catch (e)
    {

      logError('Error4');

      logError('Catch Error ' + '$e');

      throw Exception('$e');
    }

  }

  static Future<dynamic> patch({String url = '',   bool showSnackBar = false, body, headers,bool deCoded=false}) async {

    url = '/api' + url;

    final _headers = await _getHeaders(headers: headers);

    final _body = _getBody(body: body);

    Uri _url = Uri.https(baseUrl, url);

    try
    {

      final response = await http.patch(_url, headers: _headers, body: jsonEncode(_body));

      final data = _handleResponse(response: response,showSnackBar: showSnackBar,deCoded: deCoded);

      return data;

    }
    catch (e)
    {
      logError('$e');
      throw Exception('$e');
    }
  }

  static Future<dynamic> delete({String url = '', bool showSnackBar = false,body, headers,bool deCoded=false}) async {
    url = '/api' + url;
    final _headers = await _getHeaders(headers: headers);
    final _body = _getBody(body: body);
    Uri _url = Uri.https(baseUrl, url);
    try {
      final response = await http.post(_url, headers: _headers, body: jsonEncode(_body));
      final data = _handleResponse(response: response,showSnackBar: showSnackBar,deCoded: deCoded);
      return data;
    } catch (e) {
      logError('Catch Error ' + '$e');
      throw Exception('$e');
    }
  }

  static Future uploadFiles({String url = '',
    files,Map<String,String>? headers,
    String paramName = 'files',bool withAuthToken = true}) async {
    url = '/api' + url;
    final _headers = await _getHeaders(headers: headers!);
    Uri _url = Uri.https(baseUrl, url);
    var request = http.MultipartRequest('POST',_url);

    if(files is List){
      files.map ((file) async  {
        request.files.add(await http.MultipartFile.fromPath(paramName + '[]', file.path));
      });
    }else {
      request.files.add(await http.MultipartFile.fromPath(paramName, files.path));
    }
    request.headers.addAll(_headers);
    var responseData;
    var returnData;
    await request.send().then((response) async{
      responseData = await http.Response.fromStream(response);
      returnData = jsonDecode(responseData.body);

    }
    );
    return returnData;
  }

  static dynamic _handleResponse({response,onlyStatusCode = false, showSnackBar = false,deCoded=false}) async {



    switch (response.statusCode) {


      case 200:
        if(jsonDecode(response.body) is! List) {
          final message = jsonDecode(response.body)??'';
          if (showSnackBar)await customSnackBarWidget(jsonDecode(response.body),code: 200);
        }
        return deCoded?jsonDecode(response.body):response;
      case 422:
        final message = jsonDecode(response.body)['message'] ?? '';
        logWarning('Validation error: ' + message);
        if (showSnackBar) await customSnackBarWidget(jsonDecode(response.body),code: 422);
        return deCoded ? jsonDecode(response.body):response;
      case 500:
        logError('Server side error: ' + response.body);
        throw Exception('Server side error: ' + response.body);
      default:
        logError('Server side error: ' + response.body);
        throw Exception(
            'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }

}