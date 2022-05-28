import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';

class AppThemes {
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance!.window.platformBrightness;

  static final lightTheme = ThemeData.light().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorsConstants.myWhite,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorsConstants.myWhite,
          iconTheme: IconThemeData(color: ColorsConstants.myDark)));

  static final darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorsConstants.myDark,
          foregroundColor: ColorsConstants.myWhite,
          iconTheme: IconThemeData(color: ColorsConstants.myWhite)));
}
