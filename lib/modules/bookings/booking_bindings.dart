import '../../utils/path_provider.dart';

class BookingsBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BookingsController());
  }
}
