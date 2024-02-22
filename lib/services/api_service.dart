import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_exception.dart';
import 'api_links.dart';
import 'app_host.dart';

class ApiService {
  static final client = http.Client();

  static Future<dynamic> apiGetRequest(String endPoint) async {
    dynamic response;
    try {
      response = await client.get(
        Uri.parse(ApiLinks.baseURL + endPoint),
        headers: AppHost.apiHeaders,
      );
    } on SocketException {
      throw FetchDataException(AppHost.apiExceptionMsg);
    } catch (e) {
      rethrow;
    }

    return _returnResponse(response);
  }

  static Future<dynamic> apiPostRequest(
      String endPoint, dynamic requestBody) async {
    dynamic response;
    try {
      response = await client.post(
        Uri.parse(ApiLinks.baseURL + endPoint),
        // headers: AppHost.apiHeaders,
        body: requestBody,
        // encoding: encoding,
      );
    } on SocketException {
      throw FetchDataException(_returnResponse(response));
    }

    return _returnResponse(response);
  }

  static Future<dynamic> apiPutRequest(
      String endPoint, dynamic requestBody) async {
    dynamic response;
    try {
      response = await client.put(
        Uri.parse(ApiLinks.baseURL + endPoint),
        body: requestBody,
        headers: AppHost.apiHeaders,
      );
    } on SocketException {
      throw FetchDataException(AppHost.apiExceptionMsg);
    }

    return _returnResponse(response);
  }

  static Future<dynamic> apiPatchRequest(
      String endPoint, dynamic requestBody) async {
    dynamic response;

    try {
      response = await client.patch(
        Uri.parse(ApiLinks.baseURL + endPoint),
        headers: AppHost.apiHeaders,
        body: requestBody,
      );
    } on SocketException {
      throw FetchDataException(AppHost.apiExceptionMsg);
    }

    return _returnResponse(response);
  }

  static Future<dynamic> apiDeleteRequest(String endPoint, Object body) async {
    dynamic response;

    try {
      response = await client.delete(
        Uri.parse(ApiLinks.baseURL + endPoint),
        body: jsonEncode(body),
        headers: AppHost.apiHeaders,
      );
    } on SocketException {
      throw FetchDataException(AppHost.apiExceptionMsg);
    }

    return _returnResponse(response);
  }
}

dynamic _returnResponse(http.Response response) {
  return response.body;
}
