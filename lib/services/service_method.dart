import 'package:dio/dio.dart';
import 'dart:async';
import './httputil.dart';

Future request(url, {data}) async {
  try {
    Response response;
    // dio.options.contentType = ContentType.parse('application/x-www-form-urlencoded');
    if (data == null) {
      response = await HttpUtil().post(url);
    } else {
      response = await HttpUtil().post(url, data: data);
    }
    return response;
  } catch (e) {
    print('Error：---$e');
  }
}
