import 'package:al_quran_app/features/home/presentation/ui/home_screen.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_cubit/surah_cubit.dart';
import 'package:al_quran_app/features/quran/presentation/bloc/surah_details_cubit/surah_details_cubit.dart';
import 'package:al_quran_app/features/quran/presentation/ui/quran_screen.dart';
import 'package:al_quran_app/features/quran/presentation/ui/surah_details_screen.dart';
import 'package:al_quran_app/shared_libraries/utils/navigation/argument/surah_details_argument.dart';
import 'package:al_quran_app/shared_libraries/utils/navigation/router/app_routes.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:al_quran_app/shared_libraries/utils/resources/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../shared_libraries/utils/constants/app_constants.dart';
import '../shared_libraries/utils/navigation/navigation_helper.dart';
import '../shared_libraries/utils/setup/app_setup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppConstants.app.appName,
          debugShowCheckedModeBanner: Config.isDebug,
          theme: ThemeData(
            fontFamily: FontFamily.poppins,
            scaffoldBackgroundColor: ColorName.white,
          ),
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            );
          },
          home: const HomeScreen(),
          navigatorKey: NavigationHelperImpl.navigatorKey,
          onGenerateRoute: (settings) {
            var arguments = settings.arguments;
            switch (settings.name) {
              case AppRoutes.home:
                return PageTransition(
                  child: const HomeScreen(),
                  type: PageTransitionType.rightToLeft,
                );
              case AppRoutes.quran:
                return PageTransition(
                  child: BlocProvider(
                    create: (context) => SurahCubit()..getSurah(),
                    child: const QuranScreen(),
                  ),
                  type: PageTransitionType.rightToLeft,
                );
              case AppRoutes.surahDetails:
                return PageTransition(
                  child: BlocProvider(
                    create: (context) => SurahDetailsCubit(),
                    child: SurahDetailsScreen(
                      surahDetailsArgument: arguments as SurahDetailsArgument,
                    ),
                  ),
                  type: PageTransitionType.rightToLeft,
                );
              default:
                return PageTransition(
                  child: const HomeScreen(),
                  type: PageTransitionType.rightToLeft,
                );
            }
          },
        );
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
