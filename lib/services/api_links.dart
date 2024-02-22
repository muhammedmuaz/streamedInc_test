class ApiLinks {
  static void init({
    required EnvironmentFlavours environment,
  }) {
    if (environment == EnvironmentFlavours.development) {
      baseURL = _developmentURL;
    } else if (environment == EnvironmentFlavours.production) {
      baseURL = _productionURL;
    } else if (environment == EnvironmentFlavours.local) {
      baseURL = _localURL;
    }
  }

  //base URL
  // test base URL
  static late final String baseURL;
  static late final String baseURLImage;

  static const String _developmentURL = "http://95.216.221.251/dev/api";
  static const String _productionURL = '';
  static const String _localURL = '';

  // imageUrl
  static final String imagesUrl = '$baseURL/Images/';

  static const String getHomePosts = '/home-posts-test';
}

enum EnvironmentFlavours {
  development, //for developers
  production,
  local,
}
