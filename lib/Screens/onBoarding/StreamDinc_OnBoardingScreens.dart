import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamedinc_test/const/data_const.dart';
import 'package:streamedinc_test/const/design_const.dart';
import 'package:streamedinc_test/controllers/onboardingController.dart';
import 'package:streamedinc_test/utils/helper_widgets.dart/add_height.dart';
import '../../utils/screen_helper.dart';

class StreamDincOnboardingScreen extends StatelessWidget {
  const StreamDincOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = ScreenHelper.getScreenWidth(context);
    final height = ScreenHelper.getScreenHeight(context);
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Obx(() {
        return Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    color: DesignConstants.kPrimaryColor,
                    child: Center(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(controller
                                    .onboardingList[
                                        controller.activeIndex.value]
                                    .imgPath))),
                      ),
                    ))),
            Expanded(
                flex: 1,
                child: Container(
                  color: DesignConstants.kSecondaryColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: DataConstants.kScreenHorizontalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller
                            .onboardingList[controller.activeIndex.value].title,
                        style: GoogleFonts.urbanist(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 32,
                                color: DesignConstants.kTextLightGreyColor)),
                        textAlign: TextAlign.center,
                      ),
                      const AddHeight(0.01),
                      Text(
                        controller.onboardingList[controller.activeIndex.value]
                            .description,
                        style: GoogleFonts.urbanist(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: DesignConstants.kTextLightGreyColor)),
                        textAlign: TextAlign.center,
                      ),
                      const AddHeight(0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                            controller.onboardingList.length,
                            (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  height: 6,
                                  width: 6,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: index == controller.activeIndex.value
                                        ? const Color.fromARGB(
                                            255, 209, 243, 237)
                                        : DesignConstants.kDisabledColor,
                                  ),
                                )),
                      ),
                      const AddHeight(0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            child: Container(
                              height: height * 0.055,
                              width: width * 0.43,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: DesignConstants.kPrimaryBtn,
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Text(
                                'Skip',
                                style: GoogleFonts.urbanist(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: DesignConstants.kSecondaryColor),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => controller
                                .updateIndex(controller.activeIndex.value + 1),
                            child: Container(
                                height: height * 0.055,
                                width: width * 0.43,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Color(0xFF3263B0),
                                      Color(0xFF3CFEDE),
                                    ]),
                                    color: DesignConstants.kPrimaryBtn,
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: Text(
                                  'Next',
                                  style: GoogleFonts.urbanist(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        letterSpacing: 0.2,
                                        color: DesignConstants
                                            .kTextLightGreyColor),
                                  ),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        );
      }),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   controller.updateIndex(1);
      // }),
    );
  }
}
