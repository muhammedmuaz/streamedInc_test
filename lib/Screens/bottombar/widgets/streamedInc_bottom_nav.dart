import 'package:flutter/material.dart';
import '../../../../../const/design_const.dart';
import '../../../../../utils/screen_helper.dart';
import '../../../generic_widgets/navbar_item.dart';
import '../../../services/app_images.dart';

class StreamedIncBusinessBottomNavBar extends StatelessWidget {
  const StreamedIncBusinessBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = ScreenHelper.getScreenHeight(context);
    double navBarHeight = height * 0.084;
    double width = ScreenHelper.getScreenWidth(context);
    double navBarItemWidth = width / 6;

    return Container(
        height: navBarHeight,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        width: width,
        decoration: const BoxDecoration(
            color: DesignConstants.kPrimaryColor, boxShadow: const []),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavbarItem(
              icon: AppImages.bottomIcon1,
              label: 'Home',
              onTap: () {},
              index: 0,
              currentIndex: 0,
            ),
            NavbarItem(
              icon: AppImages.bottomIcon2,
              label: 'Discover',
              index: 1,
              onTap: () {},
              currentIndex: 12,
            ),
            SizedBox(
              width: navBarItemWidth * 0.15,
            ),
            Container(
              // height: navBarHeight * 0.6,
              // width: navBarItemWidth * 0.3,
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              margin: const EdgeInsets.only(top: 12.0, bottom: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xFF3263B0),
                    Color(0xFF3CFEDE),
                  ]),
                  color: DesignConstants.kPrimaryBtn,
                  borderRadius: BorderRadius.circular(8.0)),
              child: const Icon(
                Icons.add,
                color: DesignConstants.kPrimaryColor,
              ),
            ),
            SizedBox(
              width: navBarItemWidth * 0.15,
            ),
            NavbarItem(
                icon: AppImages.bottomIcon3,
                label: 'Deals',
                index: 2,
                currentIndex: 12,
                onTap: () {}),
            NavbarItem(
              icon: AppImages.bottomIcon4,
              label: 'Profile',
              currentIndex: 6,
              index: 12,
              onTap: () {},
            ),
          ],
        ));
  }
}
