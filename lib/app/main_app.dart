import 'package:al_quran_app/features/home/presentation/ui/home_screen.dart';
import 'package:al_quran_app/shared_libraries/utils/navigation/router/app_routes.dart';
import 'package:flutter/material.dart';
import '../shared_libraries/utils/constants/app_constants.dart';
import '../shared_libraries/utils/navigation/navigation_helper.dart';
import '../shared_libraries/utils/setup/app_setup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.app.appName,
      debugShowCheckedModeBanner: Config.isDebug,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      home: const HomeScreen(),
      navigatorKey: NavigationHelperImpl.navigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.home:
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          default:
            return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(context, child, details) {
    return child;
  }
}
