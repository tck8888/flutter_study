import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpUrlList {
  static const String BaseUrl = "";
}

class HttpController {
  static const String GET = "get";
  static const String POST = "post";

  static void get(String url, Function callback,
      {Map<String, String> params,
        Map<String, String> headers,
        Function errorCallback}) async {
    url = HttpUrlList.BaseUrl + url;

    if (params != null && params.isNotEmpty) {
      StringBuffer sb = new StringBuffer("?");
      params.forEach((key, value) {
        sb.write("$key" + "=" + "$value" + "&");
      });
      String paramStr = sb.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);
      url += paramStr;
      await _request(url, callback,
          method: GET,
          params: params,
          headers: headers,
          errorCallback: errorCallback);
    }
  }

  static void post(String url, Function callback,
      {Map<String, String> params,
        Map<String, String> headers,
        Function errorCallback}) async {
    if (!url.startsWith("http")) {
      url = HttpUrlList.BaseUrl + url;
    }
    await _request(url, callback,
        method: POST,
        headers: headers,
        params: params,
        errorCallback: errorCallback);
  }

  static Future  _request(String url, Function callback,
      {String method,
        Map<String, String> params,
        Map<String, String> headers,
        Function errorCallback}) async {
    String errorMsg;
    int errorCode;
    var data;
    try {
      Map<String, String> headerMap = headers == null ? new Map() : headers;
      headerMap["accessToken"]="C305B64EF77749CAB870D7DB2CC3D5EE";
      Map<String, String> paramMap = params == null ? new Map() : params;


      http.Response res;
      if (POST == method) {
        res = await http.post(url, headers: headerMap, body: paramMap);
      } else {
        res = await http.get(url, headers: headerMap);
      }

      if (res.statusCode != 200) {
        errorMsg = "网络请求错误,状态码:" + res.statusCode.toString();
        _handError(errorCallback, errorMsg);
        return;
      }

      Map<String, dynamic> map = json.decode(res.body);
      errorCode= map['errorCode'];
      errorMsg= map['errorMsg'];
      data= map['data'];
      if (callback != null) {
        if (errorCode >= 0) {
          callback(data);
        } else {
          _handError(errorCallback, errorMsg);
        }
      }
    } catch (exception) {
      _handError(errorCallback, exception.toString());
    }
  }

  static void _handError(Function errorCallback, String errorMsg) {
    if (errorCallback != null) {
      errorCallback(errorMsg);
    }
    print("errorMsg:" + errorMsg);
  }
}
