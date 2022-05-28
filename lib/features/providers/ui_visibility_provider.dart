import 'package:flutter/material.dart';

class UIVisibilityProvider extends ChangeNotifier {
  bool _isSwipeWidgetVisible = true;
  bool _isCheckRememberWidget = false;
  bool _isPasswordVisible = true;
  String _selectProject = "Default Project";
  String _selectLang = "Türkçe";

  //TODO : login_bloc a taşınacak...
  String _username = "";
  String _password = "";

  String get username => _username;
  String get password => _password;

  bool get isSwipeWidgetVisible => _isSwipeWidgetVisible;
  bool get isPasswordVisible => _isPasswordVisible;
  bool get isCheckRememberWidget => _isCheckRememberWidget;
  String get selectProject => _selectProject;
  String get selectLang => _selectLang;

  void changeUsernameValue(String value) {
    _isSwipeWidgetVisible = false;
    notifyListeners();
  }

  void changePasswordValue(String value) {
    _password = value;
    notifyListeners();
  }

  void changeSwipeWidgetVisible() {
    _isSwipeWidgetVisible = false;
    notifyListeners();
  }

  void changePasswordVisible() {
    _isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void changeCheckRememberWidget() {
    _isCheckRememberWidget = !_isCheckRememberWidget;
    notifyListeners();
  }

  void changeProject(String value) {
    _selectProject = value;
    notifyListeners();
  }

  void changeLang(String value) {
    _selectLang = value;
    notifyListeners();
  }
}
