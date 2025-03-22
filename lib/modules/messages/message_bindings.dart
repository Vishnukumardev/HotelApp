import '../../utils/path_provider.dart';

class MessageBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MessageController());
  }
}
