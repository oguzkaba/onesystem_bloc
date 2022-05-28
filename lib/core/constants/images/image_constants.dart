class ImageConstants {
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ImageConstants._init();

  String get darkLogo => toDarkPng('dark1_lowheight'); //TODO: düzenle

  String toDarkPng(String name) => 'images/dark/$name.png';
  String toLightPng(String name) => 'images/light/$name.png';
  String toIntroPng(String name) => 'images/intro/$name.png';

  String toDarkSvg(String name) => 'svg/dark/$name.svg';
  String toLightSvg(String name) => 'svg/light/$name.svg';
  String toIntroSvg(String name) => 'svg/intro/$name.svg';

  static const List<String> imagesIntro = [
    'images/intro/sign_in.jpg',
    'images/intro/responsive.jpg',
    'images/intro/analyst.jpg',
    'images/intro/api_sec.jpg',
    'images/intro/approved.jpg',
    'images/intro/cloud_sec.jpg',
    'images/intro/engineer.jpg',
    'images/intro/time.jpg',
  ];
}
