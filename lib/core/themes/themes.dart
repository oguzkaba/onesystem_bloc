import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';

class AppThemes {
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance!.window.platformBrightness;

  static final lightTheme = ThemeData.light().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xfff1f1f1),
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorsConstants.white,
          iconTheme: IconThemeData(color: ColorsConstants.dark_default)));

  static final darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorsConstants.dark_default,
          foregroundColor: ColorsConstants.white,
          iconTheme: IconThemeData(color: ColorsConstants.white)));
}
