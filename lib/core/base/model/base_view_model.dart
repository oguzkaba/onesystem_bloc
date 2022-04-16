import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/init/cache/locale_manager.dart';

abstract class BaseViewModel {
  BuildContext? context;

  LocaleManager localeManager = LocaleManager.instance;

  void setContext(BuildContext context);
  void init();
}
