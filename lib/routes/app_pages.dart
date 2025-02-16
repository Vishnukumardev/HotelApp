import 'package:ui_app/modules/authentication/authentication_bindings.dart';
import 'package:ui_app/modules/authentication/authentication_page.dart';
import 'package:ui_app/routes/app_routes.dart';
import 'package:ui_app/utils/path_provider.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.authentication,
        page: () => AuthenticationPage(),
        binding: AuthenticationBindings()),
  ];
}
