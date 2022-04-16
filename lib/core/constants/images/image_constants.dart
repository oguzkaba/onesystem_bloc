class ImageConstants {
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ImageConstants._init();

  String get darkLogo => toDarkPng('dark1_lowheight'); //TODO: düzenle

  String toDarkPng(String name) => 'assets/images/dark/$name.png';
  String toLightPng(String name) => 'assets/images/light/$name.png';
  String toIntroPng(String name) => 'assets/images/intro/$name.png';

  static const List<String> imagesIntro = [
    'assets/images/intro/sign_in.jpg',
    'assets/images/intro/responsive.jpg',
    'assets/images/intro/analyst.jpg',
    'assets/images/intro/api_sec.jpg',
    'assets/images/intro/approved.jpg',
    'assets/images/intro/cloud_sec.jpg',
    'assets/images/intro/engineer.jpg',
    'assets/images/intro/time.jpg',
  ];
}
