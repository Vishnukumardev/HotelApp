import 'package:ui_app/utils/path_provider.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => MapController(), fenix: true);
    Get.lazyPut(() => BookingsController(), fenix: true);
    Get.lazyPut(() => MessageController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
  }
}
