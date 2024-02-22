import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:streamedinc_test/controllers/homeController.dart';
import '../../utils/screen_helper.dart';
import 'widget/home_widget.dart';

class StreamDincHomePage extends StatelessWidget {
  const StreamDincHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return SafeArea(
      child: GetBuilder<HomeController>(builder: (controller) {
        if (controller.isloading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
        return PageView.builder(
          scrollDirection: Axis.vertical,
          controller: controller.pageController,
          itemCount: controller.posts.posts.length,
          itemBuilder: (context, index) {
            return HomeFeed(post: controller.posts.posts[index]);
          },
        );
      }),
    );
  }
}
