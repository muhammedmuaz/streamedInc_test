import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/screen_helper.dart';
import '../const/design_const.dart';

class NavbarItem extends StatelessWidget {
  final String icon;
  final String label;
  final int index;
  final int currentIndex;
  final VoidCallback onTap;
  const NavbarItem(
      {Key? key,
      required this.icon,
      required this.label,
      required this.index,
      required this.currentIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = ScreenHelper.getScreenHeight(context);
    double navbarHeight = height * 0.08;

    final navbarWidth = ScreenHelper.getScreenWidth(context) / 6;
    bool isSelected = currentIndex == index;
    return SizedBox(
      width: navbarWidth,
      height: navbarHeight,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          children: [
            FittedBox(
              child: Image.asset(
                icon,
                width: navbarWidth * 0.4,
                height: navbarHeight * 0.4, // Set height of the image
                fit: BoxFit
                    .contain, // BoxFit to control how the image fits into the box
              ),
            ),
            SizedBox(
              height: navbarHeight * 0.1,
            ),
            Text(
              label,
              style: GoogleFonts.urbanist(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                      fontSize: 10,
                      color: isSelected
                          ? DesignConstants.kSecondaryLightColor
                          : DesignConstants.kDisabledBottomColor)),
            ),
          ],
        ),
      ),
    );
  }
}
