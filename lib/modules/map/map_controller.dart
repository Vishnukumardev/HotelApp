import '../../utils/path_provider.dart';

class MapController extends GetxController {
  int value = 0;
  void add() {
    value++;
    update();
  }
}
