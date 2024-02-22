import 'package:flutter/material.dart';

import '../const/design_const.dart';

class StreamDincTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: DesignConstants.kSecondaryColor,
      //color theme
      primaryColor: DesignConstants
          .kPrimaryColor, // contrast to color white in entire app
      primaryColorDark: const Color(0xff00B3B3),
      primaryColorLight: const Color(0xffF3F6F9), //used in textfield
      disabledColor: DesignConstants
          .kDisabledColor, // used as disabled color for primary color
      secondaryHeaderColor: const Color(0xff00B3B3),
      // used in the
      colorScheme: ColorScheme.fromSeed(
        seedColor: DesignConstants.kPrimaryColor,
        primary: DesignConstants.kPrimaryColor,
        secondary: DesignConstants.kSecondaryColor,
        error: DesignConstants.kErrorColor,
      ),
      // font family
      fontFamily: '', // Set your desired font family here

      //text theme for your app
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        displayLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
          letterSpacing: 0.6,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
        labelLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: '',
          color: DesignConstants.kTextBlackColor,
        ),
      ),

      //Set check box theme
      radioTheme: RadioThemeData(
        splashRadius: 0,
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return DesignConstants
                .kPrimaryColor; // Color for selected radio button
          } else {
            return DesignConstants
                .kBgGreyColor; // Color for unselected radio button
          }
        }),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              // Color when checkbox is checked
              return DesignConstants.kPrimaryColor;
            }
            // Color when checkbox is unchecked
            return DesignConstants.kTextBlackColor;
          },
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return const BorderSide(
                color: DesignConstants.kPrimaryColor,
                width: 1.0,
              );
            }
            return const BorderSide(
              color: DesignConstants.kTextBlackColor,
              width: 1.0,
            );
          },
        ),
      ));
}
