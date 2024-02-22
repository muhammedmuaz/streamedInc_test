import 'package:flutter/material.dart';
import 'package:streamedinc_test/Screens/onBoarding/StreamDinc_OnBoardingScreens.dart';
import 'package:streamedinc_test/StreamDinc_SplashScreen.dart';
import '../Screens/bottombar/streamedInc_bottombar.dart';
import 'app_route_names.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.initial:
        return _screenRoute(screen: const StreamDincSplashScreen());
      case AppRoutesNames.onBoarding:
        return _screenRoute(screen: const StreamDincOnboardingScreen());
      case AppRoutesNames.home:
        return _screenRoute(screen: const RepherredBottomNavigation());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _screenRoute({Widget? screen}) {
    return MaterialPageRoute(builder: (context) => screen!);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Something went wrong',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OpenSans',
                  color: Color(0xff2D3139))),
        ),
      );
    });
  }
}
