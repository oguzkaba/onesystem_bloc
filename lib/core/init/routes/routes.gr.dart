// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:onesystem_bloc/features/auth/login/view/login_view.dart' as _i3;
import 'package:onesystem_bloc/features/onboard/view/onboard_view.dart' as _i2;
import 'package:onesystem_bloc/features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashView());
    },
    OnBoardView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.OnBoardView());
    },
    LoginView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.LoginView());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashView.name, path: '/'),
        _i4.RouteConfig(OnBoardView.name, path: '/on-board-view'),
        _i4.RouteConfig(LoginView.name, path: '/login-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i4.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.OnBoardView]
class OnBoardView extends _i4.PageRouteInfo<void> {
  const OnBoardView() : super(OnBoardView.name, path: '/on-board-view');

  static const String name = 'OnBoardView';
}

/// generated route for
/// [_i3.LoginView]
class LoginView extends _i4.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login-view');

  static const String name = 'LoginView';
}
