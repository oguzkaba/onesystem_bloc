// ignore_for_file: prefer_const_constructors
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onesystem_bloc/core/constants/app/app_constants.dart';
import 'package:onesystem_bloc/core/init/lang/language_manager.dart';
import 'package:onesystem_bloc/core/init/routes/routes.gr.dart';
import 'package:onesystem_bloc/core/themes/cubit/theme_cubit.dart';
import 'package:onesystem_bloc/core/themes/themes.dart';
import 'package:onesystem_bloc/features/providers/ui_visibility_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await _init();
  runApp(EasyLocalization(
    child: MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => UIVisibilityProvider())
    ], child: MyApp()),
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: ApplicationConstants.langAssetPath,
    startLocale: LanguageManager.instance.trLocale,
  ));
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await Firebase.initializeApp();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void didChangePlatformBrightness() {
    context.read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
