import '../../utils/path_provider.dart';

class MainController extends GetxController {
  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    HomePage(),
    MapPage(),
    BookingsPage(),
    MessagePage(),
    ProfilePage(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
