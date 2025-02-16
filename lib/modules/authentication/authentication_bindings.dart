import '../../utils/path_provider.dart';

class AuthenticationBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthenticationController());
  }
}
