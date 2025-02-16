import 'package:ui_app/services/APIHelper.dart';
import 'package:ui_app/services/network_service.dart';

import '../utils/path_provider.dart';

class DependencyInjection {
  static void init() async {
    Get.put<LocalStorage>(LocalStorage(), permanent: true);
    Get.put<Apihelper>(Apihelper());

    if (GetPlatform.isAndroid) {
      Get.put<NetworkService>(NetworkService(), permanent: true);
    }
  }
}
