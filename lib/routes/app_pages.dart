import 'package:ui_app/utils/path_provider.dart';

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
    GetPage(
        name: AppRoutes.map,
        page: () => const MapPage(),
        binding: MapBindings()),
    GetPage(
        name: AppRoutes.messages,
        page: () => MessagePage(),
        binding: MessageBindings()),
    GetPage(
        name: AppRoutes.profile,
        page: () => ProfilePage(),
        binding: ProfileBindings()),
    GetPage(
        name: AppRoutes.favourite,
        page: () => FavouritePage(),
        binding: FavouriteBindings()),
    GetPage(
        name: AppRoutes.bookings,
        page: () => BookingsPage(),
        binding: BookingsBindings()),
    GetPage(
        name: AppRoutes.main, page: () => MainPage(), binding: MainBindings())
  ];
}
