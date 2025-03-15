import '../../utils/path_provider.dart';

class AuthenticationController extends GetxController {
  bool isRegister = false;

  void switchAuth() {
    isRegister = !isRegister;
    update();
  }
}
