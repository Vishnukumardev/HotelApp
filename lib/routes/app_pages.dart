import 'package:ui_app/utils/path_provider.dart';
import 'package:ui_app/widgets/splash_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(
        name: AppRoutes.authentication,
        page: () => const AuthenticationPage(),
        binding: AuthenticationBindings()),
    GetPage(
        name: AppRoutes.home,
        page: () => const HomePage(),
        binding: HomeBindings()),
  ];
}
