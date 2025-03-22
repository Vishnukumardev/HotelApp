import '../../utils/path_provider.dart';

class FavouriteBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FavouriteController());
  }
}
