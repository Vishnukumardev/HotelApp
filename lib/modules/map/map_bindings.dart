import '../../utils/path_provider.dart';

class MapBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MapController());
  }
}
