class AppImages {
  static const assetImagePath = 'assets/images/';
  static const icons = 'assets/icons/';

  static String _concatPathAndImage(String icon, {String? path}) {
    return path == null ? assetImagePath + icon : path + icon;
  }

  //IMAGES
  static get splashScreen => _concatPathAndImage('splash_screen.png');
  static get onBoarding1 => _concatPathAndImage('onBoarding1.png');
  static get onBoarding2 => _concatPathAndImage('onBoarding2.png');
  static get onBoarding3 => _concatPathAndImage('onBoarding3.png');
  static get bottomIcon1 => _concatPathAndImage('bottom_icon_1.png');
  static get bottomIcon2 => _concatPathAndImage('bottom_icon_2.png');
  static get bottomIcon3 => _concatPathAndImage('bottom_icon_3.png');
  static get bottomIcon4 => _concatPathAndImage('bottom_icon_4.png');
}
