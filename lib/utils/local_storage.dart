import 'package:get/get.dart';
import 'package:ui_app/utils/path_provider.dart';

class LocalStorage extends GetxService {
  late SharedPreferences _prefs;
  RxString token = ''.obs;
  RxString id = ''.obs;
  RxString name = ''.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    _prefs = await SharedPreferences.getInstance();
    fetchUserDetails();
    super.onInit();
  }

  void fetchUserDetails() {
    token = RxString(_prefs.getString('token') ?? '');
    id = RxString(_prefs.getString('id') ?? '');
    name = RxString(_prefs.getString('name') ?? '');
  }

  void setLocalData({
    required String tokenLocal,
    required String idLocal,
  }) {
    token = RxString(tokenLocal);
    id = RxString(idLocal);
  }

  void setUserDetails({required String nameLocal}) {
    name = RxString(nameLocal);
  }
}
