import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streamedinc_test/services/app_images.dart';
import 'controllers/splashController.dart';
import 'generic_widgets/streamdinc_asset_image.dart';
import 'utils/screen_helper.dart';

class StreamDincSplashScreen extends StatelessWidget {
  const StreamDincSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
// Callig Controller
    Get.put(SplashController());

    final width = ScreenHelper.getScreenWidth(context);
    final height = ScreenHelper.getScreenHeight(context);
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: StreamdincAssetImage(
          imagePath: AppImages.splashScreen,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
