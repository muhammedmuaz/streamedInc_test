import 'dart:convert';

class AppHost {
  static const String apiExceptionMsg = "Try Again Later.";
  static const String apiBadResponseMsg = 'Bad Response.';
  static const String noInternetMsg =
      'No Internet Connection. Connect Your Internet & Try Again.';

  static const int apiSuccessCode = 200;
  static const int apiErrorCode = 200;

  static dynamic apiHeaders = {
    // 'Content-Type': 'application/json',
  };

  final encoding = Encoding.getByName('utf-8');

  static updateHeaders() {
    // apiHeaders = {'Content-Type': 'application/json'};
  }
}
