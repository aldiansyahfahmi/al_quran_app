import 'package:al_quran_app/shared_libraries/utils/navigation/argument/surah_details_argument.dart';

import '../../navigation/navigation_helper.dart';
import 'app_routes.dart';

abstract class QuranRouter {
  void navigateToSurahDetailsScreen(
      {required SurahDetailsArgument surahDetailsArgument});
}

class QuranRouterImpl implements QuranRouter {
  NavigationHelper navigationHelper = NavigationHelperImpl();

  @override
  void navigateToSurahDetailsScreen(
      {required SurahDetailsArgument surahDetailsArgument}) {
    navigationHelper.pushNamed(
      AppRoutes.surahDetails,
      arguments: surahDetailsArgument,
    );
  }
}
