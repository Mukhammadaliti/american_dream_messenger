import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/log_in/bindings/log_in_binding.dart';
import '../modules/log_in/views/log_in_view.dart';
import '../modules/opt/bindings/opt_binding.dart';
import '../modules/opt/views/opt_view.dart';
import '../modules/sing_in/bindings/sing_in_binding.dart';
import '../modules/sing_in/views/sing_in_view.dart';
import '../modules/welcom/bindings/welcom_binding.dart';
import '../modules/welcom/views/welcom_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.OPT;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomView(),
      binding: WelcomBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.LOG_IN,
      page: () => const LogInView(),
      binding: LogInBinding(),
    ),
    GetPage(
      name: _Paths.SING_IN,
      page: () => const SingInView(),
      binding: SingInBinding(),
    ),
    GetPage(
      name: _Paths.OPT,
      page: () => const OptView(),
      binding: OptBinding(),
    ),
  ];
}
