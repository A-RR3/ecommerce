// ignore_for_file: constant_identifier_names

class GetAssets {
  static String getAssetPath(String name, subPath,
          {String extension = 'svg'}) =>
      'assets/$subPath/$name.$extension';

  static const String icons = 'icons';
  static const String images = 'images';

  //IMAGES KEYS

  static const String SHOPPING_LOGO = 'shopping';

// ICONS KEYS

  static const String MASTER_CARD = 'mastercard';
  static const String VISA = 'visa';
  static const String USA_FLAG = 'usa';
  static const String FRANCE_FLAG = 'france';
  static const String GERMAN_FLAG = 'german';
  static const String CHINA_FLAG = 'china';
  static const String JAPAN_FLAG = 'japan';
  static const String TURKEY_FLAG = 'turkey';
}
