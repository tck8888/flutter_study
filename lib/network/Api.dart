import 'dart:io';
import 'package:dio/dio.dart';

import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class HttpUrlList {
  static const String BaseUrl = "http://180.167.88.250:12087/";
}

class Api {
  static Future<dynamic> get(String path) async {
    var dio = Api.createDio();
    Response<Map> response = await dio.get(path);
    var data = response.data['data'];
    print(data);
    return data;
  }

  static Future<dynamic> post(String path,
      {Map<String, dynamic> params}) async {
    var dio = Api.createDio();
    Response<Map> response;
    if (params != null && params.isNotEmpty) {
      print("====" + params.toString());
      response = await dio.post(path, data: params);
    } else {
      response = await dio.post(path);
    }
    print("====" + response.toString());
    var data = response.data['data'];
    return data;
  }

  static Dio createDio() {
    //C305B64EF77749CAB870D7DB2CC3D5EE
    Map<String, dynamic> headers = {
      "accessToken": "C305B64EF77749CAB870D7DB2CC3D5EE"
    };
    var options = Options(
      baseUrl: HttpUrlList.BaseUrl,
      connectTimeout: 10000,
      receiveTimeout: 100000,
      headers: headers,
      contentType: ContentType.json,
    );
    return Dio(options);
  }
}
