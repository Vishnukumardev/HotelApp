import '../utils/path_provider.dart';

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  ThemeMode get themeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    if (isDarkMode.value) {
      Get.changeTheme(lightTheme); // Pass ThemeData
    } else {
      Get.changeTheme(darkTheme); // Pass ThemeDataR
    }
    isDarkMode.value = !isDarkMode.value;
  }
}
