import '../../utils/path_provider.dart';

class HomeController extends GetxController {
  int value = 0;

  void add() {
    value++;
    update();
  }
}
