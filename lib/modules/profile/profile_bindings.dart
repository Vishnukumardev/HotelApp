import '../../utils/path_provider.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProfileController());
  }
}
