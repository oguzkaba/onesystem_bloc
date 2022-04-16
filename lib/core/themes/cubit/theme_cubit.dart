import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/themes/themes.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.light)) {
    updateAppTheme();
  }

  void updateAppTheme() {
    final Brightness currentBrightness = AppThemes.currentSystemBrightness;
    currentBrightness == Brightness.light
        ? emit(const ThemeState(themeMode: ThemeMode.light))
        : emit(const ThemeState(themeMode: ThemeMode.dark));
  }

  // void _setTheme(ThemeMode themeMode) {
  //   AppThemes.setStatusBarAndNavigationBarColors(themeMode);
  //   emit(ThemeState(themeMode: themeMode));
  // }
}
