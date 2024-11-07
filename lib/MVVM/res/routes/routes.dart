import 'package:get/route_manager.dart';
import 'package:getx/MVVM/res/routes/routes_name.dart';
import 'package:getx/MVVM/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashSceen,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(microseconds: 230),
            transition: Transition.circularReveal)
      ];
}
