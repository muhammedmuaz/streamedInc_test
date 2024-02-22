import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:streamedinc_test/const/data_const.dart';
import 'package:streamedinc_test/theme/streamdinc_theme.dart';
import 'routing/app_navigatior.dart';
import 'routing/app_route_generator.dart';
import 'routing/app_route_names.dart';
import 'services/api_links.dart';

void main() {
  ApiLinks.init(environment: EnvironmentFlavours.development);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: DataConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: StreamDincTheme.lightTheme,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      initialRoute: AppRoutesNames.initial,
      navigatorKey: AppNavigation.navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
