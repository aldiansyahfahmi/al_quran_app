import '../../navigation/navigation_helper.dart';
import 'app_routes.dart';

abstract class HomeRouter {
  void navigateToQuranScreen();
}

class HomeRouterImpl implements HomeRouter {
  NavigationHelper navigationHelper = NavigationHelperImpl();

  @override
  void navigateToQuranScreen() {
    navigationHelper.pushNamed(AppRoutes.quran);
  }
}
