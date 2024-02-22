import 'package:flutter/material.dart';
import 'app_route_names.dart';

class AppNavigation {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> navigateTo(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> pushReplacementTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  static void removeAllRoutes(String routeName,
      {String? removeUnitlRouteName}) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName, ModalRoute.withName(AppRoutesNames.initial));
  }

  static goBack() {
    return navigatorKey.currentState!.pop();
  }
}
