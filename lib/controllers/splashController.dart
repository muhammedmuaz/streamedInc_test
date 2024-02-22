import 'dart:async';
import 'package:get/get.dart';
import 'package:streamedinc_test/routing/app_navigatior.dart';
import 'package:streamedinc_test/routing/app_route_names.dart';

class SplashController extends GetxController {
  // Run On Start
  void navigateToOnBoarding() {
    Timer(const Duration(milliseconds: 500),
        () => AppNavigation.pushReplacementTo(AppRoutesNames.onBoarding));
  }

  @override
  void onInit() {
    navigateToOnBoarding();
    super.onInit();
  }
}
