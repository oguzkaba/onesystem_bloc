import 'package:auto_route/auto_route.dart';
import 'package:onesystem_bloc/features/auth/login/view/login_view.dart';
import 'package:onesystem_bloc/features/onboard/view/onboard_view.dart';
import 'package:onesystem_bloc/features/splash/view/splash_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: OnBoardView),
    AutoRoute(page: LoginView),
  ],
)
class $AppRouter {}
