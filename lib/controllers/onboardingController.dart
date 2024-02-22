import 'package:get/get.dart';
import 'package:streamedinc_test/models/onboarding_model.dart';
import 'package:streamedinc_test/routing/app_navigatior.dart';
import 'package:streamedinc_test/routing/app_route_names.dart';
import 'package:streamedinc_test/services/app_images.dart';

class OnBoardingController extends GetxController {
  List<OnBoardingModel> onboardingList = [
    OnBoardingModel(
        title: 'Discover Great Deals',
        imgPath: AppImages.onBoarding1,
        description:
            'Have something to sell? Just snap, upload, and price your items. We\'ve made the process simple and quick. Get your items in front of buyers in no time!'),
    OnBoardingModel(
        title: 'Effortless Selling',
        imgPath: AppImages.onBoarding2,
        description:
            'Have something to sell? Just snap, upload, and price your items. We\'ve made the process simple and quick. Get your items in front of buyers in no time!'),
    OnBoardingModel(
        title: 'Promote Your Business',
        imgPath: AppImages.onBoarding3,
        description:
            'Our platform is a powerful tool for businesses as well! Advertise your products or services to a large and engaged audience,')
  ];

  RxInt activeIndex = 0.obs;

  void updateIndex(int index) {
    if (index > 2) {
      AppNavigation.navigateTo(AppRoutesNames.home);
    } else {
      activeIndex(index);
    }
  }
}
